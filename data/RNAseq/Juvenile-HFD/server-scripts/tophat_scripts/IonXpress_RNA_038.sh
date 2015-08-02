#!/bin/bash
#PBS -N IonXpress_RNA_038

# Make the standard output and error streams are to be merged, intermixed, as
# standard output.
#PBS -j oe

#Request 6 hours of wall time
#PBS -l     cput=999:00:00
#PBS -l walltime=999:00:00

#Request 11 processors on 1 node
#PBS -l procs=11
#PBS -l pmem=40gb
#PBS -l nodes=compute-0-2
#PBS -r n

#get an email notice when job is done
#PBS -m e
#PBS -M dbridge9@uthsc.edu

PBS_O_WORKDIR="/home/dbridge/data/juvenile"
cd $PBS_O_WORKDIR

echo ------------------------------------------------------
echo -n 'Job is running on node '; cat $PBS_NODEFILE
echo ------------------------------------------------------
echo PBS: qsub is running on $PBS_O_HOST
echo PBS: originating queue is $PBS_O_QUEUE
echo PBS: executing queue is $PBS_QUEUE
echo PBS: working directory is $PBS_O_WORKDIR
echo PBS: execution mode is $PBS_ENVIRONMENT
echo PBS: job identifier is $PBS_JOBID
echo PBS: job name is $PBS_JOBNAME
echo PBS: node file is $PBS_NODEFILE
echo PBS: current home directory is $PBS_O_HOME
echo PBS: PATH = $PBS_O_PATH
echo ------------------------------------------------------

echo " "
echo " "
echo "Job started on `hostname` at `date`"
tophat2 --library-type fr-secondstrand --read-mismatches=5 --read-edit-dist=5 -o tophat_output/IonXpress_RNA_038 -p 16 --transcriptome-index=reference-sequences/transcriptome_data/GRCm38 reference-sequences/GRCm38 raw_sequences/IonXpress_RNA_038.R_2015_07_08_12_05_38_user_SER-149-DBridges_39RNAseq_project_pool_5_7-2-15.fastq
bam2fastx -q -Q -A -o tophat_output/IonXpress_RNA_038/unmapped.fastq tophat_output/IonXpress_RNA_038/unmapped.bam
bowtie2 -p 16 --very-sensitive-local -x -mm -x reference-sequences/GRCm38 -U tophat_output/IonXpress_RNA_038/unmapped.fastq -S tophat_output/IonXpress_RNA_038/remapped.sam
samtools view -bS tophat_output/IonXpress_RNA_038/remapped.sam > tophat_output/IonXpress_RNA_038/remapped.bam
samtools sort tophat_output/IonXpress_RNA_038/remapped.bam tophat_output/IonXpress_RNA_038/remapped_sort
samtools view -H tophat_output/IonXpress_RNA_038/accepted_hits.bam | samtools reheader - tophat_output/IonXpress_RNA_038/remapped_sort.bam > tophat_output/IonXpress_RNA_038/remapped_sort_rh.bam
samtools merge -f tophat_output/IonXpress_RNA_038/merged.bam tophat_output/IonXpress_RNA_038/accepted_hits.bam tophat_output/IonXpress_RNA_038/remapped_sort_rh.bam
rm tophat_output/IonXpress_RNA_038/remapped_sort.bam
rm tophat_output/IonXpress_RNA_038/remapped_sort_rh.bam
rm tophat_output/IonXpress_RNA_038/remapped.sam
exit
