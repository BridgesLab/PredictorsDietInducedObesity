# HTSeq Counts Analysis
Dave Bridges  
August 2, 2015  




This script analyses the HTSeq resutls for the Juvenile HFD studies.  This script was most recently run on Sun Aug  2 11:14:20 2015



This script merges all the files in the directory ../server-scripts/htseq-output and analyses the counts.

![](figures/htseq-counts-summary-1.png) 

# Summary

On average 28% of reads were aligned to a known feature, with 40% of reads not mapped to known features.  A remaining 24% of reads were too low quality to be mapped.  The range of mapped reads was 6199586 to 14596745 with an average of 9517519.


# Session Information


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
## other attached packages:
## [1] RColorBrewer_1.1-2 knitr_1.10.5      
## 
## loaded via a namespace (and not attached):
##  [1] magrittr_1.5    formatR_1.2     tools_3.2.0     htmltools_0.2.6
##  [5] yaml_2.1.13     stringi_0.5-5   rmarkdown_0.7   stringr_1.0.0  
##  [9] digest_0.6.8    evaluate_0.7
```
