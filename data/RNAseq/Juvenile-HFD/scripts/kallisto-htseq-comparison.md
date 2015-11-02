# Comparison of Kallisto and Tophat/HTSeq
Dave Bridges  
September 3, 2015  


This script was most recently run on Fri Sep  4 12:39:22 2015.


```r
kallisto.file <- "TPM Table.csv"
htseq.file <- "Normalized Counts.csv"

kallisto.data <- read.csv(kallisto.file)
htseq.data <- read.csv(htseq.file)

annotation.filename <- "ENSEMBL Annotation - Transcripts.csv"
annotation <- read.csv(annotation.filename, row.names="X")

mapping.filename <- "../sample-mapping.csv"
mapping.data <- read.csv(mapping.filename)
```


```r
library(tidyr)
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
kallisto.data.long <- 
  kallisto.data %>%
  gather(sample, X) 
colnames(kallisto.data.long) <- c('transcript','sample','expression')
#remove decimal from transcript id
kallisto.data.long$transcript <- sapply(strsplit(as.character(kallisto.data.long$transcript), "\\."),"[",1)
kallisto.annotated <-
  kallisto.data.long %>%
  inner_join(mapping.data, by=c('sample'='Barcode')) %>%
  inner_join(annotation, by=c('transcript'='ensembl_transcript_id'))
```

```
## Warning in inner_join_impl(x, y, by$x, by$y): joining character vector and
## factor, coercing into character vector
```

```r
htseq.data.long <-   
  htseq.data %>%
  gather(sample, X) 
colnames(htseq.data.long) <- c('gene','sample','expression')
#remove decimal from transcript id
htseq.data.long$gene <- sapply(strsplit(as.character(htseq.data.long$gene), "\\."),"[",1)
htseq.data.long$sample <- gsub("\\.", "-", htseq.data.long$sample)
htseq.data.long$sample <- substring(htseq.data.long$sample,2)
htseq.annotated <-
  htseq.data.long %>%
  inner_join(mapping.data, by=c('sample'='SampleID')) %>%
  inner_join(annotation, by=c('gene'='ensembl_gene_id'))
```

```
## Warning in inner_join_impl(x, y, by$x, by$y): joining character vector and
## factor, coercing into character vector
```

```
## Warning in inner_join_impl(x, y, by$x, by$y): joining character vector and
## factor, coercing into character vector
```

```r
combined.data <- merge(htseq.annotated[1:100000,c('gene','expression')],
                       kallisto.annotated[1:100000,c('transcript','ensembl_gene_id','expression')], 
                       by.x='gene', by.y='ensembl_gene_id')
```

We combined the htseq and kallisto data by the annotated gene.


```r
with(combined.data, plot(log(expression.x+1), log(expression.y+1), col="#00000001", pch=19, las=1,
                         xlab='HTseq Expression', 
                         ylab="Kallisto Expression", 
                         main="Log Expression Between Count Algorithms"))
```

![](kallisto-htseq-comparison_files/figure-html/htseq-kallisto-correlation-analysis-1.png) 

```r
simple.cor <- with(combined.data, cor.test(log(expression.x+1), log(expression.y+1)))
```

The correlation between kallisto expression and htseq expression is 0.4226948 with a R2 of 0.1786709 and a p-value of 0.

Session Information
---------------------


```r
sessionInfo()
```

```
## R version 3.2.2 (2015-08-14)
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
## [1] dplyr_0.4.2 tidyr_0.2.0
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_0.12.0     digest_0.6.8    assertthat_0.1  plyr_1.8.3     
##  [5] R6_2.1.1        DBI_0.3.1       formatR_1.2     magrittr_1.5   
##  [9] evaluate_0.7.2  stringi_0.5-5   reshape2_1.4.1  rmarkdown_0.7  
## [13] tools_3.2.2     stringr_1.0.0   yaml_2.1.13     parallel_3.2.2 
## [17] htmltools_0.2.6 knitr_1.11
```
