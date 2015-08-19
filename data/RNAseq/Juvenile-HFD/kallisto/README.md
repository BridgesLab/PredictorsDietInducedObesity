Kallisto Alignments
====================

* Used kallisto v 0.42.2.1
* Created 29 kmer index based on the protein coding gencode version M5 dataset with the command `kallisto index -k 29 -i gencode.vM6.pc_transcripts.idx gencode.vM6.pc_transcripts.fa.gz`
* Used this index to do 100 bootstraps of each data file which was remotely located
* Analysed each fastq file with 100 bootstraps in single read mode using a random seed using the script **kallisto-script.sh**
