#!/bin/bash

#location of fastq files (remote)
FASTQ_DIR="/volumes/bridges_lab/Bridges/Bioinformatics/Juvenile-HFD/raw_sequences"

#location of index file
INDEX="gencode.vM6.pc_transcripts.idx"
OUTPUT_FOLDER="kallisto_output"

rm $OUTPUT_FOLDER
mkdir $OUTPUT_FOLDER

for FILE in `ls $FASTQ_DIR/*.fastq`
do
  echo "Processing $FILE"
  #get the basename of the file
  SAMPLE=`basename ${FILE%%.*}`
  kallisto quant -i $INDEX -o $OUTPUT_FOLDER/$SAMPLE --single --fragment-length=164 --bootstrap-samples=100 --threads=7 --seed=$RANDOM $FILE
done
  
  
