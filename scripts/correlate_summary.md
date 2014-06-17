Summary of Correlates That Predict Weight Gain
========================================================

This script uses several output files that did individual correrlation analyses.  The goal of this script is to combine these into a single table and adjust the p-values accordingly.  This script was most recently run on Tue Jun 17 15:22:09 2014.



The input files are:
* ../data/processed/Correlation Between Initial Weight and Absolute Weight Gain.csv
* ../data/processed/Correlation Between Initial Weight and Percent Weight Gain.csv
* ../data/processed/Correlations Between Fasting Response and Weight Gain.csv
* ../data/processed/Pre-Diet Hormone Correlations - Absolute Weight Gain.csv
* ../data/processed/Pre-Diet Hormone Correlations - Percent Weight Gain.csv

Predictors of Absolute Weight Gain
------------------------------------



The summary is written to an output file ../data/processed/Absolute Weight Gain - Correlation Summary.csv

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Tue Jun 17 15:22:09 2014 -->
<TABLE border=1>
<TR> <TH> Measurement </TH> <TH> Control Diet_estimate </TH> <TH> Control Diet_p.value </TH> <TH> High Fat Diet_estimate </TH> <TH> High Fat Diet_p.value </TH> <TH> High Fat Diet_q.value </TH> <TH> Control Diet_q.value </TH>  </TR>
  <TR> <TD> Relative Fasting Response </TD> <TD align="right"> -0.323 </TD> <TD align="right"> 0.063 </TD> <TD align="right"> -0.398 </TD> <TD align="right"> 0.0054 </TD> <TD align="right"> 0.054 </TD> <TD align="right"> 0.625 </TD> </TR>
  <TR> <TD> Initial Body Weight </TD> <TD align="right"> -0.060 </TD> <TD align="right"> 0.733 </TD> <TD align="right"> 0.348 </TD> <TD align="right"> 0.0885 </TD> <TD align="right"> 0.442 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> Leptin </TD> <TD align="right"> -0.195 </TD> <TD align="right"> 0.523 </TD> <TD align="right"> 0.251 </TD> <TD align="right"> 0.2717 </TD> <TD align="right"> 0.906 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> GLP1 </TD> <TD align="right"> -0.138 </TD> <TD align="right"> 0.654 </TD> <TD align="right"> 0.148 </TD> <TD align="right"> 0.5229 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> Glucagon </TD> <TD align="right"> 0.027 </TD> <TD align="right"> 0.935 </TD> <TD align="right"> 0.094 </TD> <TD align="right"> 0.6862 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> Ghrelin </TD> <TD align="right"> -0.214 </TD> <TD align="right"> 0.482 </TD> <TD align="right"> -0.077 </TD> <TD align="right"> 0.7412 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> Resistin </TD> <TD align="right"> -0.198 </TD> <TD align="right"> 0.517 </TD> <TD align="right"> 0.030 </TD> <TD align="right"> 0.8990 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> PAI1 </TD> <TD align="right"> -0.027 </TD> <TD align="right"> 0.935 </TD> <TD align="right"> 0.027 </TD> <TD align="right"> 0.9079 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> Insulin </TD> <TD align="right"> 0.016 </TD> <TD align="right"> 0.964 </TD> <TD align="right"> -0.016 </TD> <TD align="right"> 0.9442 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
  <TR> <TD> GIP </TD> <TD align="right"> -0.377 </TD> <TD align="right"> 0.204 </TD> <TD align="right"> -0.009 </TD> <TD align="right"> 0.9688 </TD> <TD align="right"> 0.969 </TD> <TD align="right"> 0.964 </TD> </TR>
   </TABLE>

![plot of chunk summary-abs-barplot](figure/summary-abs-barplot.pdf) 

Predictors of Percentage Weight Gain
------------------------------------



The summary is written to an output file ../data/processed/Percentage Weight Gain - Correlation Summary.csv

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Tue Jun 17 15:22:09 2014 -->
<TABLE border=1>
<TR> <TH> Measurement </TH> <TH> Control Diet_estimate </TH> <TH> Control Diet_p.value </TH> <TH> High Fat Diet_estimate </TH> <TH> High Fat Diet_p.value </TH> <TH> High Fat Diet_q.value </TH> <TH> Control Diet_q.value </TH>  </TR>
  <TR> <TD> Relative Fasting Response </TD> <TD align="right"> -0.334 </TD> <TD align="right"> 0.054 </TD> <TD align="right"> -0.610 </TD> <TD align="right"> 0.0000066 </TD> <TD align="right"> 0.0000660 </TD> <TD align="right"> 0.357 </TD> </TR>
  <TR> <TD> Leptin </TD> <TD align="right"> -0.058 </TD> <TD align="right"> 0.851 </TD> <TD align="right"> 0.297 </TD> <TD align="right"> 0.1913052 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> GLP1 </TD> <TD align="right"> 0.044 </TD> <TD align="right"> 0.886 </TD> <TD align="right"> 0.144 </TD> <TD align="right"> 0.5340658 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> Glucagon </TD> <TD align="right"> 0.132 </TD> <TD align="right"> 0.669 </TD> <TD align="right"> 0.105 </TD> <TD align="right"> 0.6490680 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> PAI1 </TD> <TD align="right"> 0.077 </TD> <TD align="right"> 0.807 </TD> <TD align="right"> 0.064 </TD> <TD align="right"> 0.7842242 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> Ghrelin </TD> <TD align="right"> -0.115 </TD> <TD align="right"> 0.710 </TD> <TD align="right"> -0.047 </TD> <TD align="right"> 0.8382714 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> GIP </TD> <TD align="right"> -0.300 </TD> <TD align="right"> 0.320 </TD> <TD align="right"> -0.038 </TD> <TD align="right"> 0.8689997 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> Resistin </TD> <TD align="right"> -0.121 </TD> <TD align="right"> 0.696 </TD> <TD align="right"> 0.036 </TD> <TD align="right"> 0.8766776 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
  <TR> <TD> Initial Body Weight </TD> <TD align="right"> -0.308 </TD> <TD align="right"> 0.071 </TD> <TD align="right"> -0.028 </TD> <TD align="right"> 0.8931749 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.357 </TD> </TR>
  <TR> <TD> Insulin </TD> <TD align="right"> 0.044 </TD> <TD align="right"> 0.892 </TD> <TD align="right"> 0.027 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.9086518 </TD> <TD align="right"> 0.892 </TD> </TR>
   </TABLE>

![plot of chunk summary-pct-barplot](figure/summary-pct-barplot.pdf) 

Session Information
--------------------


```
## R version 3.1.0 (2014-04-10)
## Platform: x86_64-apple-darwin13.1.0 (64-bit)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] xtable_1.7-3 reshape2_1.4 knitr_1.6   
## 
## loaded via a namespace (and not attached):
## [1] evaluate_0.5.5 formatR_0.10   plyr_1.8.1     Rcpp_0.11.2   
## [5] stringr_0.6.2  tools_3.1.0
```

