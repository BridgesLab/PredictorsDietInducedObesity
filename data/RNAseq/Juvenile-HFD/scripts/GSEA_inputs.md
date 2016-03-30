# Making Input Files for GSEA Analyses
Dave Bridges, Quynh Tran  
August 9, 2015  

Making the input files
----------------------



This script takes the input files results/DESeq_Combined_Model_Quadricep_Unique_Kalllisto.csv and results/DESeq_Combined_Model_WAT_Unique_Kalllisto.csv.  This script was most recently run on Wed Mar 30 17:25:26 2016.  It writes out to the data files results/GSEA_prerank_Quadriceps_feeding_kallisto.rnk and results/GSEA_prerank_WAT_interaction_kallisto.rnk.

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
## R version 3.2.2 (2015-08-14)
## Platform: x86_64-redhat-linux-gnu (64-bit)
## Running under: Red Hat Enterprise Linux Server release 6.7 (Santiago)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] magrittr_1.5    formatR_1.3     tools_3.2.2     htmltools_0.3.5
##  [5] yaml_2.1.13     Rcpp_0.12.4     stringi_1.0-1   rmarkdown_0.9.5
##  [9] knitr_1.12.3    stringr_1.0.0   digest_0.6.9    evaluate_0.8.3
```
