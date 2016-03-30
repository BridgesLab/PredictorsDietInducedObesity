# Barplot Analysis of Juvenile HFD Study
Dave Bridges  
August 13, 2015  



```r
library(knitr)
opts_chunk$set(fig.path='figures/',
               echo=FALSE, warning=FALSE, message=FALSE,dev=c('png','pdf'))
options(digits=3, scipen=8)
```

Used analysed DESeq results.  This script was most recently run on Wed Mar 30 16:40:42 2016.



This script uses the DESeq files DESeq Results for Effects of Diet on WAT - Kalllisto.csv and the mapping file ../sample-mapping.csv.  It uses the annotation data found in ENSEMBL Annotation - Transcripts.csv.  The normalized counts are found in TPM Table.csv.

# Adipocytes



# Quadriceps




Drew bargraphs for *Ncoa1, Ncoa2, Ncoa3*.



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
## other attached packages:
## [1] ggplot2_2.1.0 dplyr_0.4.3   tidyr_0.4.1   knitr_1.12.3 
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.4      digest_0.6.9     assertthat_0.1   plyr_1.8.3      
##  [5] grid_3.2.2       R6_2.1.2         gtable_0.2.0     DBI_0.3.1       
##  [9] formatR_1.3      magrittr_1.5     scales_0.4.0     evaluate_0.8.3  
## [13] stringi_1.0-1    lazyeval_0.1.10  rmarkdown_0.9.5  labeling_0.3    
## [17] tools_3.2.2      stringr_1.0.0    munsell_0.4.3    yaml_2.1.13     
## [21] parallel_3.2.2   colorspace_1.2-6 htmltools_0.3.5
```
