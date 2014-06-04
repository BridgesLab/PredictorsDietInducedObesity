Body Weights and Food Intake of High Fat Diets -- Combined Data
=================================================================

Data
-----
Combines Cohorts 3-5.  This script was most recently run on Wed Jun  4 10:51:34 2014

Body Weight Data
------------------



This analysis includes 1006 measurements from 126 mice.  The raw data is written to a file named `output_bodyweight_file`.

Body Weight Statistics
-----------------------




With all cohorts combined, we tested whether there was a difference between High Fat Diet and Normal Chow Diet (see Table below) or High Fat Diet and Control Diet (see Table below) on a weekly basis.

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Weekly Unadjusted and BH Adjusted T-tests Comparing High Fat Diet to Normal Chow Diet for Body Weight </CAPTION>
<TR> <TH>  </TH> <TH> Uncorrected </TH> <TH> Corrected </TH>  </TR>
  <TR> <TD align="right"> Starting </TD> <TD align="right"> 0.0039469292 </TD> <TD align="right"> 0.0039469292 </TD> </TR>
  <TR> <TD align="right"> Week 2 </TD> <TD align="right"> 0.0000000002 </TD> <TD align="right"> 0.0000000002 </TD> </TR>
  <TR> <TD align="right"> Week 4 </TD> <TD align="right"> 0.0000000000 </TD> <TD align="right"> 0.0000000000 </TD> </TR>
  <TR> <TD align="right"> Week 6 </TD> <TD align="right"> 0.0000000000 </TD> <TD align="right"> 0.0000000000 </TD> </TR>
  <TR> <TD align="right"> Week 8 </TD> <TD align="right"> 0.0000000000 </TD> <TD align="right"> 0.0000000000 </TD> </TR>
  <TR> <TD align="right"> Week 10 </TD> <TD align="right"> 0.0000000000 </TD> <TD align="right"> 0.0000000000 </TD> </TR>
  <TR> <TD align="right"> Week 12 </TD> <TD align="right"> 0.0000000000 </TD> <TD align="right"> 0.0000000000 </TD> </TR>
   <A NAME=tab:ncd-t-tests></A>
</TABLE>
<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Weekly Unadjusted and BH Adjusted T-tests Comparing High Fat Diet to Control Diet for Body Weight </CAPTION>
<TR> <TH>  </TH> <TH> Uncorrected </TH> <TH> Corrected </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD align="right"> 0.0015186442 </TD> <TD align="right"> 0.0035435030 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD align="right"> 0.5321712131 </TD> <TD align="right"> 0.5687757252 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD align="right"> 0.5687757252 </TD> <TD align="right"> 0.5687757252 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD align="right"> 0.1291078525 </TD> <TD align="right"> 0.1807509935 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD align="right"> 0.0265369093 </TD> <TD align="right"> 0.0464395913 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD align="right"> 0.0000321422 </TD> <TD align="right"> 0.0001124977 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD align="right"> 0.0000046498 </TD> <TD align="right"> 0.0000325484 </TD> </TR>
   <A NAME=tab:cd-t-tests></A>
</TABLE>

### Cage Effects

The average cage effect was 3.5374 grams.  In the figure below is the initial cage effects.  The p-value for significance of Cage differences generally is **1.5627 &times; 10<sup>-10</sup>** (see ANOVA in below).

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> ANOVA for Cage Effects on Body Weights </CAPTION>
<TR> <TH>  </TH> <TH> Df </TH> <TH> Sum Sq </TH> <TH> Mean Sq </TH> <TH> F value </TH> <TH> Pr(&gt;F) </TH>  </TR>
  <TR> <TD> Cage        </TD> <TD align="right"> 32 </TD> <TD align="right"> 382.62 </TD> <TD align="right"> 11.96 </TD> <TD align="right"> 4.91 </TD> <TD align="right"> 0.0000 </TD> </TR>
  <TR> <TD> Residuals   </TD> <TD align="right"> 113 </TD> <TD align="right"> 275.35 </TD> <TD align="right"> 2.44 </TD> <TD align="right">  </TD> <TD align="right">  </TD> </TR>
   <A NAME=tab:cage-effects></A>
</TABLE>


I used a mixed effects linear model to test the effects of the week, the diet and the cohort groups.  The residuals from this model are shown in the Figure below, indicating a good fit with this kind of linear model.

To test whether there is an interaction between the diet and the weeks of Treatment we compared models with or without the interaction term.  The p-value for this **5.3535 &times; 10<sup>-109</sup>** indicating that there is a very strong interaction between these terms and that we need to account for the time on diet.

To test whether inclusion of diet is significant, I compared two linear mixed effect models with both the Week and the Cohort, but only one having the Treatment groupings.  The p-value for this comparason was 4.7888 &times; 10<sup>-16</sup>, indicating we should include the Treatment group term. The post-hoc tests for differences between Treatment groups are shown in the Table below.

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Post-Hoc Tests for Treatment Effects on Body Weight </CAPTION>
<TR> <TH>  </TH> <TH> Effect Size (g) </TH> <TH> p-value </TH>  </TR>
  <TR> <TD align="right"> Control Diet - High Fat Diet </TD> <TD align="right"> 0.543 </TD> <TD align="right"> 0.399 </TD> </TR>
  <TR> <TD align="right"> Normal Chow Diet - High Fat Diet </TD> <TD align="right"> 3.030 </TD> <TD align="right"> 0.000 </TD> </TR>
  <TR> <TD align="right"> Normal Chow Diet - Control Diet </TD> <TD align="right"> 2.486 </TD> <TD align="right"> 0.000 </TD> </TR>
   <A NAME=tab:ph-treatment></A>
</TABLE>


To test whether including the cohort in this model is significant, I compared two linear mixed effect models both with Treatment and Week included but only one with Cohort included.  The p-value for this comparason was 3.2146 &times; 10<sup>-23</sup> so we should include the Cohort term.  The post-hoc tests for differences between Cohorts is shown in the Table below.  

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Post-Hoc Tests for Cohort Effects on Body Weight </CAPTION>
<TR> <TH>  </TH> <TH> Effect Size (g) </TH> <TH> p-value </TH>  </TR>
  <TR> <TD align="right"> Cohort 4 - Cohort 3 </TD> <TD align="right"> 0.515 </TD> <TD align="right"> 0.278683674195 </TD> </TR>
  <TR> <TD align="right"> Cohort 5 - Cohort 3 </TD> <TD align="right"> 5.647 </TD> <TD align="right"> 0.000000000000 </TD> </TR>
  <TR> <TD align="right"> Cohort 6 - Cohort 3 </TD> <TD align="right"> 4.277 </TD> <TD align="right"> 0.000000000000 </TD> </TR>
  <TR> <TD align="right"> Cohort 5 - Cohort 4 </TD> <TD align="right"> 5.131 </TD> <TD align="right"> 0.278683674195 </TD> </TR>
  <TR> <TD align="right"> Cohort 6 - Cohort 4 </TD> <TD align="right"> 3.761 </TD> <TD align="right"> 0.000000000000 </TD> </TR>
  <TR> <TD align="right"> Cohort 6 - Cohort 5 </TD> <TD align="right"> -1.370 </TD> <TD align="right"> 0.000000000000 </TD> </TR>
   <A NAME=tab:ph-cohort></A>
</TABLE>


The coefficients for the final model are shown in the Table below.  The root mean square error of this model is 2.3753g. 

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:37 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Coefficients for Selected Mixed Effects Model for Body Weight </CAPTION>
  <TR> <TD align="right"> (Intercept) </TD> <TD align="right"> 22.32 </TD> </TR>
  <TR> <TD align="right"> TreatmentControl Diet </TD> <TD align="right"> 0.54 </TD> </TR>
  <TR> <TD align="right"> TreatmentNormal Chow Diet </TD> <TD align="right"> 3.03 </TD> </TR>
  <TR> <TD align="right"> Week </TD> <TD align="right"> 1.41 </TD> </TR>
  <TR> <TD align="right"> CohortCohort 4 </TD> <TD align="right"> 0.52 </TD> </TR>
  <TR> <TD align="right"> CohortCohort 5 </TD> <TD align="right"> 5.65 </TD> </TR>
  <TR> <TD align="right"> CohortCohort 6 </TD> <TD align="right"> 4.28 </TD> </TR>
  <TR> <TD align="right"> TreatmentControl Diet:Week </TD> <TD align="right"> -0.40 </TD> </TR>
  <TR> <TD align="right"> TreatmentNormal Chow Diet:Week </TD> <TD align="right"> -0.98 </TD> </TR>
   <A NAME=tab:nlme-coefficients></A>
</TABLE>



Variations in End Weights
-------------------------------
We looked at the variation between the groups for the end weights.  These are plotted as a density plot in the Figure below and the standard deviations are plotted in the Figures below.  To test whether these standard deviations are different between High Fat Diet and the two control diets we did a Brown-Forsythe test.  The results of this test are p=0.0186 for Control Diet and p=0.0039 for Normal Chow Diet.

![plot of chunk end-weight-distribution](figure/end-weight-distribution.pdf) 


![plot of chunk end-weight-errors](figure/end-weight-errors.pdf) 


![plot of chunk end-weight-rel-errors](figure/end-weight-rel-errors.pdf) 


<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:38 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Summary Statistics for End Point Body Weights </CAPTION>
<TR> <TH>  </TH> <TH> Treatment </TH> <TH> mean </TH> <TH> sd </TH> <TH> n </TH> <TH> se </TH> <TH> pct.error </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> High Fat Diet </TD> <TD align="right"> 42.30 </TD> <TD align="right"> 5.16 </TD> <TD align="right">  81 </TD> <TD align="right"> 0.57 </TD> <TD align="right"> 12.21 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Control Diet </TD> <TD align="right"> 38.48 </TD> <TD align="right"> 3.20 </TD> <TD align="right">  35 </TD> <TD align="right"> 0.54 </TD> <TD align="right"> 8.32 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Normal Chow Diet </TD> <TD align="right"> 29.21 </TD> <TD align="right"> 2.18 </TD> <TD align="right">  25 </TD> <TD align="right"> 0.44 </TD> <TD align="right"> 7.46 </TD> </TR>
   <A NAME=general-summary></A>
</TABLE>


![plot of chunk start-cage-effects](figure/start-cage-effects.pdf) 


![plot of chunk nlme-residuals](figure/nlme-residuals.pdf) 


Body Weight Graphs
--------------------

See Figure below for the weights separated between cohorts, Ffor the weights separated between diets and Figure for all combined data.


```
## Loading required package: ggplot2
```

![plot of chunk weights](figure/weights1.pdf) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
```

![plot of chunk weights](figure/weights2.pdf) ![plot of chunk weights](figure/weights3.pdf) ![plot of chunk weights](figure/weights4.pdf) 


Correlation Between Initial Weight and Weight Gain
--------------------------------------------------




<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:41 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Correlation of Absolute Weight Gain to Initial Weight </CAPTION>
<TR> <TH>  </TH> <TH> Correlation Coefficient </TH> <TH> R-Squared </TH> <TH> P-Value </TH>  </TR>
  <TR> <TD align="right"> Normal Chow Diet </TD> <TD align="right"> 0.1759 </TD> <TD align="right"> 0.0310 </TD> <TD align="right"> 0.1365 </TD> </TR>
  <TR> <TD align="right"> Control Diet </TD> <TD align="right"> -0.0554 </TD> <TD align="right"> 0.0031 </TD> <TD align="right"> 0.7518 </TD> </TR>
  <TR> <TD align="right"> High Fat Diet </TD> <TD align="right"> 0.2447 </TD> <TD align="right"> 0.0599 </TD> <TD align="right"> 0.2383 </TD> </TR>
   <A NAME=tab:weekly-correlations></A>
</TABLE>
<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Wed Jun  4 10:51:41 2014 -->
<TABLE border=1>
<CAPTION ALIGN="bottom"> Correlation of Percent Weight Gain to Initial Weight </CAPTION>
<TR> <TH>  </TH> <TH> Correlation Coefficient </TH> <TH> R-Squared </TH> <TH> P-Value </TH>  </TR>
  <TR> <TD align="right"> Normal Chow Diet </TD> <TD align="right"> -0.1431 </TD> <TD align="right"> 0.0205 </TD> <TD align="right"> 0.2270 </TD> </TR>
  <TR> <TD align="right"> Control Diet </TD> <TD align="right"> -0.3304 </TD> <TD align="right"> 0.1091 </TD> <TD align="right"> 0.0526 </TD> </TR>
  <TR> <TD align="right"> High Fat Diet </TD> <TD align="right"> -0.0957 </TD> <TD align="right"> 0.0092 </TD> <TD align="right"> 0.6491 </TD> </TR>
   <A NAME=tab:weekly-correlations-pct></A>
</TABLE>


There was no significant correlation between Initial Weight and the amount of weight gained or the percentage of weight gained by the end of the treatment period (see Table below and and Figures below).

![plot of chunk weekly-gain](figure/weekly-gain.pdf) 


![plot of chunk weekly-gain-pct](figure/weekly-gain-pct.pdf) 



Effects of Outliers on the Rest of the Cage
-------------------------------------------



One hypothesis is that one dominant mouse may affect the weights of other mice in its cage.  To test this we looked at the mice which are the 5 heaviest from our data.  These mice weighed on average 49.668g.  They existed in 5 cages.  Those cages contained 20 mice in total, or 15 other mice.  Those other mice (excluding the heavy ones) weighed on average 43.5613g compared to an average 12 week weight of 42.3031g for all fed High Fat Diet Mice.  This is not significantly different (p=0.3922).


![plot of chunk outlier-effects-bargraph](figure/outlier-effects-bargraph.pdf) 



Session Information
---------------------

```
## R version 3.1.0 (2014-04-10)
## Platform: x86_64-apple-darwin13.1.0 (64-bit)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats4    splines   stats     graphics  grDevices utils     datasets 
## [8] methods   base     
## 
## other attached packages:
##  [1] reshape_0.8.5      ggplot2_0.9.3.1    plyr_1.8.1        
##  [4] lawstat_2.4.1      VGAM_0.9-3         xtable_1.7-3      
##  [7] multcomp_1.3-3     TH.data_1.0-3      survival_2.37-7   
## [10] mvtnorm_0.9-99992  lme4_1.1-6         Rcpp_0.11.1       
## [13] Matrix_1.1-3       RColorBrewer_1.0-5 knitr_1.5         
## 
## loaded via a namespace (and not attached):
##  [1] colorspace_1.2-4    digest_0.6.4        evaluate_0.5.5     
##  [4] formatR_0.10        grid_3.1.0          gtable_0.1.2       
##  [7] labeling_0.2        lattice_0.20-29     MASS_7.3-33        
## [10] minqa_1.2.3         munsell_0.4.2       nlme_3.1-117       
## [13] proto_0.3-10        RcppEigen_0.3.2.1.2 reshape2_1.4       
## [16] sandwich_2.3-0      scales_0.2.4        stringr_0.6.2      
## [19] tools_3.1.0         zoo_1.7-11
```

