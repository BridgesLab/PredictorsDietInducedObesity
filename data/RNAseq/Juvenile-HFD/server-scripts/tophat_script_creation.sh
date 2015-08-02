#!/bin/sh

INDEX="reference-sequences/GRCm38"
TRANSCRIPTOME="reference-sequences/transcriptome_data/GRCm38"
FASTQ_FILES=`ls raw_sequences/*.fastq`
SCRIPT_FOLDER='tophat_scripts'
OUTPUT_FOLDER='tophat_output'
#remoe older folders
rm -r  $SCRIPT_FOLDER
rm -r  $OUTPUT_FOLDER

mkdir $SCRIPT_FOLDER
mkdir $OUTPUT_FOLDER

for FILE in $FASTQ_FILES
do
  #get the basename of the file
  SAMPLE=`basename ${FILE%%.*}`
  #create the output folder
  mkdir $OUTPUT_FOLDER/$SAMPLE
  echo "#!/bin/bash" > $SCRIPT_FOLDER/$SAMPLE.sh
  echo "#PBS -N $SAMPLE" >> $SCRIPT_FOLDER/$SAMPLE.sh
  cat default.pbs >> $SCRIPT_FOLDER/$SAMPLE.sh
  echo "tophat2 --library-type fr-secondstrand --read-mismatches=5 --read-edit-dist=5 -o $OUTPUT_FOLDER/$SAMPLE -p 16 --transcriptome-index=$TRANSCRIPTOME $INDEX $FILE" >> $SCRIPT_FOLDER/$SAMPLE.sh
  #convert unmapped reads into fastq files
  echo "bam2fastx -q -Q -A -o $OUTPUT_FOLDER/$SAMPLE/unmapped.fastq $OUTPUT_FOLDER/$SAMPLE/unmapped.bam" >> $SCRIPT_FOLDER/$SAMPLE.sh 
  #run bowtie2 very sensitive local alignments on unmapped reads
  echo "bowtie2 -p 16 --very-sensitive-local -x -mm -x $INDEX -U $OUTPUT_FOLDER/$SAMPLE/unmapped.fastq -S $OUTPUT_FOLDER/$SAMPLE/remapped.sam" >> $SCRIPT_FOLDER/$SAMPLE.sh 
  echo "samtools view -bS $OUTPUT_FOLDER/$SAMPLE/remapped.sam > $OUTPUT_FOLDER/$SAMPLE/remapped.bam" >> $SCRIPT_FOLDER/$SAMPLE.sh 
  #merge and sort BAM files
  echo "samtools sort $OUTPUT_FOLDER/$SAMPLE/remapped.bam $OUTPUT_FOLDER/$SAMPLE/remapped_sort" >> $SCRIPT_FOLDER/$SAMPLE.sh
  echo "samtools view -H $OUTPUT_FOLDER/$SAMPLE/accepted_hits.bam | samtools reheader - $OUTPUT_FOLDER/$SAMPLE/remapped_sort.bam > $OUTPUT_FOLDER/$SAMPLE/remapped_sort_rh.bam" >> $SCRIPT_FOLDER/$SAMPLE.sh
  echo "samtools merge -f $OUTPUT_FOLDER/$SAMPLE/merged.bam $OUTPUT_FOLDER/$SAMPLE/accepted_hits.bam $OUTPUT_FOLDER/$SAMPLE/remapped_sort_rh.bam" >> $SCRIPT_FOLDER/$SAMPLE.sh
  echo "exit" >> $SCRIPT_FOLDER/$SAMPLE.sh
done
