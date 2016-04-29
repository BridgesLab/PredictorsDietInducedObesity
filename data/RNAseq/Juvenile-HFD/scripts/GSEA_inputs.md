# Making Input Files for GSEA Analyses
Dave Bridges, Quynh Tran  
August 9, 2015  

Making the input files
----------------------



This script takes the input files results/DESeq_Combined_Model_Quadricep_Unique_Kalllisto.csv and results/DESeq_Combined_Model_WAT_Unique_Kalllisto.csv.  This script was most recently run on Fri Apr 29 11:06:38 2016.  It writes out to the data files results/GSEA_prerank_Quadriceps_feeding_kallisto.rnk and results/GSEA_prerank_WAT_interaction_kallisto.rnk.

## GSEA Analysis

Used GSEA version 2.2 downloaded from http://www.broadinstitute.org/gsea/index.jsp.  Some notes on the actual analyses

* Used preranked list, ordered by log2fold change
* Ran 1000 permutations
* Compared to MSigDB database version 5.1
* Looked at gene sets with between 10 and 5000 members
* Used **weighted** enrichment statistic
* Seed for permutation is 149

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
## R version 3.2.4 (2016-03-10)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: OS X 10.10.5 (Yosemite)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] magrittr_1.5    formatR_1.3     tools_3.2.4     htmltools_0.3.5
##  [5] yaml_2.1.13     Rcpp_0.12.4     stringi_1.0-1   rmarkdown_0.9.5
##  [9] knitr_1.12.3    stringr_1.0.0   digest_0.6.9    evaluate_0.8.3
```
