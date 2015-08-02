# Obtaining Data
1. Downloaded fastq files from MRC server via SFTP into the raw_sequences folder.  Set fastq files to be readonly with the command `chmod a-w *.fastq`
2. Downloaded genome and GTF files from GENCODE.  Files obtained were:
  * Comprehensive gene annotation -- ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_mouse/release_M5/gencode.vM5.annotation.gtf.gz
  * Genome sequence, primary assembly (GRCm38) -- ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_mouse/release_M5/GRCm38.primary_assembly.genome.fa.gz
  * Extracted both files with gzip -d <FILENAME>

## Generating Reference Genome
* Used bowtie2-build version 2.2.5 to generate index files from GENCODE GRCm38 file
* This was done using the script `reference_genome/reference-index.pbs`

## Quality Control Analysis of FASTQC Files
* FastQC was run to gennerate reports on fastq files. 
* FastQC version *FastQC v0.11.2* was used.
* This was done using the script `fastqc.pbs`.
* These results are saved in the *FastQC_Output* folder.

# Alignments to the Genome
* Used Tophat v2.1.0 and Bowtie version 2.2.5.0
* Prepared transcriptome index using the file `reference-files.pbs` which generated the transcriptome reference from gencode.vM5.annotation.gtf and placed it in a folder located at reference-sequences/transcriptome_data/GRCm38
* Generated alignment scripts using `tophat_script_creation.sh`.  Some alignment notes:
  * Aligned first via tophat, allowing for 5 mismatches and setting strandedness to second strand
  * Took unmapped reads and re-alined with bowtie under local very sensitive settings to get the remaining ~40% of reads mapped
  * Merged the tophat and bowtie results files into merged.bam

# Generating Counts Tables
* Used HTseq v0.6.0
* Mapped merged bowtie/tophat run to the gencode transcriptome (gencode.vM5.annotation.gtf)
* Used stranded=yes, mode is intersection-nonempty and used default cutoff score (10)
* This was done using the script `htseq-counts.pbs` putting the results in the **htseq-output** folder
