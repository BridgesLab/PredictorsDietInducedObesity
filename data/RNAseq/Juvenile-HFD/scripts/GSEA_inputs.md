# Making Input Files for GSEA Analyses
Dave Bridges  
August 9, 2015  

Making the input files
----------------------



This script takes the input files DESeq Results for Effects of Diet on Quadriceps.csv and DESeq Results for Effects of Diet on WAT.csv.  This script was most recently run on Sun Aug  9 13:16:00 2015.  It writes out to the data files GSEA_prerank_Quadriceps.rnk and GSEA_prerank_WAT.rnk.

## GSEA Analysis

Used GSEA version 2.2 downloaded from http://www.broadinstitute.org/gsea/index.jsp.  Some notes on the actual analyses

* Used preranked list, ordered by log2fold change
* Ran 1000 permutations
* Compared to MSigDB database version 5.0
* Looked at gene sets with between 10 and 5000 members
* Used **weighted** enrichment statistic

The analysis was done against the following gene sets:

* Gene Ontology - Cellular Component 
* Gene Ontology - Biological Process
* Gene Ontology - Molecular Function
* KEGG
* Reactome
* Biocarta
* miRNA
* TFT, TRANSFAC 7.4



Session Information
---------------------


```
## R version 3.2.0 (2015-04-16)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: OS X 10.10.4 (Yosemite)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] magrittr_1.5    formatR_1.2     tools_3.2.0     htmltools_0.2.6
##  [5] yaml_2.1.13     stringi_0.5-5   rmarkdown_0.7   knitr_1.10.5   
##  [9] stringr_1.0.0   digest_0.6.8    evaluate_0.7
```
