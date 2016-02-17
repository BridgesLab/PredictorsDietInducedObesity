# Barplot Analysis of Juvenile HFD Study
Dave Bridges  
August 13, 2015  



```r
library(knitr)
```

```
## Warning: package 'knitr' was built under R version 3.2.3
```

```r
opts_chunk$set(fig.path='figures/',
               echo=FALSE, warning=FALSE, message=FALSE,dev=c('png','pdf'))
options(digits=3, scipen=8)
```

Used analysed DESeq results.  This script was most recently run on Wed Feb 17 15:31:49 2016.



This script uses the DESeq files DESeq Results for Effects of Diet on WAT - Kalllisto.csv and the mapping file ../sample-mapping.csv.  It uses the annotation data found in ENSEMBL Annotation - Transcripts.csv.  The normalized counts are found in TPM Table.csv.

# Adipocytes



# Quadriceps




Drew bargraphs for *Retn, Pparg, Lep, Hsd11b1, Pnpla2, Tbc1d9b, Clk4, Slc1a3, Ap2s1, Rer1, Ywhae, Eif4ebp3, Hsd11b1, Irf4*.



Session Information
---------------------


```
## R version 3.2.2 (2015-08-14)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: OS X 10.10.5 (Yosemite)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] ggplot2_2.0.0 dplyr_0.4.3   tidyr_0.4.1   knitr_1.12.3 
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.3      digest_0.6.9     assertthat_0.1   plyr_1.8.3      
##  [5] grid_3.2.2       R6_2.1.2         gtable_0.1.2     DBI_0.3.1       
##  [9] formatR_1.2.1    magrittr_1.5     scales_0.3.0     evaluate_0.8    
## [13] stringi_1.0-1    lazyeval_0.1.10  rmarkdown_0.9.2  labeling_0.3    
## [17] tools_3.2.2      stringr_1.0.0    munsell_0.4.3    yaml_2.1.13     
## [21] parallel_3.2.2   colorspace_1.2-6 htmltools_0.3
```
