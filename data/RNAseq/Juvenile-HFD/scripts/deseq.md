# DESeq Analysis
Dave Bridges  
August 2, 2015  




This script performs the DESeq analyses on the Juvenile HFD studies.  This script was most recently run on Fri Aug  7 16:41:02 2015



The counts data, derived from HTSeq are located in ../server-scripts/htseq-output.  The sample mapping file is located in ../sample-mapping.csv.  The annotations are from the file ENSEMBL Annotation.csv.



# Overall Analysis

The first model was a completely interacting model in which tissue, feeding state and diet were all able to interact.

![MA Plot for Overall Model](figures/deseq-MA-plot-overall-1.png) 

![PCA Plot for Overall Model](figures/deseq-PCA-plot-overall-1.png) 

![Similarity Matrix for All Samples](figures/deseq-similarity-matrix-1.png) 

# Adipose Tissue

The adipose tissue samples are all eWAT samples

## Effects of Feeding State

This model used only the adipose tissue data, and tested for changes related to the feeding state.


Table: Top Hits for Effects of Feeding

        ensembl_gene_id       baseMean   log2FoldChange   lfcSE    stat   pvalue    padj       X  gene_biotype     external_gene_name 
------  -------------------  ---------  ---------------  ------  ------  -------  ------  ------  ---------------  -------------------
10425   ENSMUSG00000036644        1352            0.467   0.076    6.11        0   0.000   26684  protein_coding   Tbc1d9b            
6864    ENSMUSG00000028715         804           -7.543   1.363   -5.54        0   0.000   26511  protein_coding   Cyp4a14            
2484    ENSMUSG00000020385         288           -0.656   0.124   -5.30        0   0.000   31424  protein_coding   Clk4               
5236    ENSMUSG00000025878         255           -0.629   0.128   -4.91        0   0.002   14925  protein_coding   Uimc1              
10453   ENSMUSG00000036752        1888            0.772   0.157    4.92        0   0.002    3500  protein_coding   Tubb4b             

![MA Plot for Effects of Feeding Status on Adipose Tissue](figures/deseq-MA-plot-wat-feeding-1.png) 

We identified 42 differentially expressed genes in adipose tissue, out of a total of 45232 genes tested.  Of these significantly differentially expressed genes, 13 were upregulated and 29 were downregulated.

## Effects of Diet 


Table: Top Hits for Effects of Diet

        ensembl_gene_id       baseMean   log2FoldChange   lfcSE   stat   pvalue    padj       X  gene_biotype     external_gene_name 
------  -------------------  ---------  ---------------  ------  -----  -------  ------  ------  ---------------  -------------------
12479   ENSMUSG00000042129       192.9            1.945   0.352   32.9        0   0.001   12610  protein_coding   Rassf4             
834     ENSMUSG00000005360       739.2            6.638   1.240   24.0        0   0.004   27013  protein_coding   Slc1a3             
964     ENSMUSG00000006235        37.4            6.110   1.169   24.6        0   0.004   25827  protein_coding   Epor               
1150    ENSMUSG00000008036       522.3           -0.814   0.334   23.1        0   0.004   25195  protein_coding   Ap2s1              
1410    ENSMUSG00000012705      4124.9            6.331   1.217   22.8        0   0.004   13700  protein_coding   Retn               
1680    ENSMUSG00000015950       149.6            2.033   0.454   24.0        0   0.004   37961  protein_coding   Ncf1               
2317    ENSMUSG00000020101       851.0            5.361   1.053   23.2        0   0.004   15099  protein_coding   4632428N05Rik      
2401    ENSMUSG00000020241       943.1            3.530   0.680   25.3        0   0.004   16248  protein_coding   Col6a2             
2665    ENSMUSG00000020676        72.2            6.843   1.270   25.5        0   0.004   41451  protein_coding   Ccl11              
2854    ENSMUSG00000020963       480.5            6.194   1.165   23.8        0   0.004   21836  protein_coding   Tshr               

![MA Plot for Effects of Diet Status on Adipose Tissue](figures/deseq-MA-plot-wat-diet-1.png) 

We identified 1281 differentially expressed genes, out of a total of 45232 genes tested.  Of these significantly differentially expressed genes, 958 were upregulated and 323 were downregulated.

# Muscle Tissue

The muscle tissue samples are all quadriceps samples

## Effects of Feeding State

This model used only the quadriceps tissue data, and tested for changes related to the feeding state.


Table: Top Hits for Effects of Feeding

        ensembl_gene_id       baseMean   log2FoldChange   lfcSE    stat   pvalue   padj       X  gene_biotype     external_gene_name 
------  -------------------  ---------  ---------------  ------  ------  -------  -----  ------  ---------------  -------------------
6930    ENSMUSG00000028834       11986            -3.58   0.119   -30.1        0      0   36321  protein_coding   Trim63             
5917    ENSMUSG00000027075         828            -3.01   0.108   -27.8        0      0   39992  protein_coding   Slc43a1            
4485    ENSMUSG00000024413        1821            -2.01   0.074   -27.0        0      0   31803  protein_coding   Npc1               
14304   ENSMUSG00000048489        1721            -6.49   0.243   -26.7        0      0     111  protein_coding   8430408G22Rik      
3631    ENSMUSG00000022358       11991            -3.21   0.135   -23.9        0      0    3003  protein_coding   Fbxo32             

![MA Plot for Effects of Feeding Status on Muscle Tissue](figures/deseq-MA-plot-quad-feeding-1.png) 

We identified 4770 differentially expressed genes in muscle tissue, out of a total of 45232 genes tested.  Of these significantly differentially expressed genes, 2351 were upregulated and 2419 were downregulated.

## Effects of Diet 


Table: Top Hits for Effects of Diet

        ensembl_gene_id       baseMean   log2FoldChange   lfcSE   stat   pvalue    padj       X  gene_biotype           external_gene_name 
------  -------------------  ---------  ---------------  ------  -----  -------  ------  ------  ---------------------  -------------------
42477   ENSMUSG00000103880        60.6           -0.918   0.388   35.3        0   0.000   15263  processed_pseudogene   Gm37009            
17760   ENSMUSG00000063415        74.6           -3.853   0.742   32.6        0   0.000    8793  protein_coding         Cyp26b1            
5922    ENSMUSG00000027080        33.6           -0.318   0.344   27.7        0   0.003   40317  protein_coding         Med19              
691     ENSMUSG00000004285       361.5           -0.046   0.206   24.1        0   0.009   21470  protein_coding         Atp6v1f            
2805    ENSMUSG00000020893       623.4           -0.723   0.314   24.2        0   0.009   41303  protein_coding         Per1               
18016   ENSMUSG00000064368        44.3           -0.568   0.583   24.3        0   0.009       5  protein_coding         mt-Nd6             
11439   ENSMUSG00000039159       624.7           -0.168   0.150   20.1        0   0.058   17205  protein_coding         Ube2h              
5067    ENSMUSG00000025477       910.9           -0.221   0.157   19.8        0   0.060   40491  protein_coding         Inpp5a             
502     ENSMUSG00000002910      1209.1           -0.479   0.343   18.8        0   0.078    9876  protein_coding         Arrdc2             
5566    ENSMUSG00000026463        95.0            0.089   0.252   18.8        0   0.078   39858  protein_coding         Atp2b4             

![MA Plot for Effects of Diet Status on Adipose Tissue](figures/deseq-MA-plot-quad-diet-1.png) 

We identified 6 differentially expressed genes in quadriceps, out of a total of 45232 genes tested.  Of these significantly differentially expressed genes, 0 were upregulated and 6 were downregulated.


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
## [1] parallel  stats4    stats     graphics  grDevices utils     datasets 
## [8] methods   base     
## 
## other attached packages:
##  [1] gplots_2.17.0             BiocParallel_1.2.18      
##  [3] DESeq2_1.8.1              RcppArmadillo_0.5.200.1.0
##  [5] Rcpp_0.12.0               GenomicRanges_1.20.5     
##  [7] GenomeInfoDb_1.4.1        IRanges_2.2.5            
##  [9] S4Vectors_0.6.3           BiocGenerics_0.14.0      
## [11] knitr_1.10.5             
## 
## loaded via a namespace (and not attached):
##  [1] genefilter_1.50.0    gtools_3.5.0         locfit_1.5-9.1      
##  [4] reshape2_1.4.1       splines_3.2.0        lattice_0.20-33     
##  [7] colorspace_1.2-6     htmltools_0.2.6      yaml_2.1.13         
## [10] survival_2.38-3      XML_3.98-1.3         foreign_0.8-65      
## [13] DBI_0.3.1            RColorBrewer_1.1-2   lambda.r_1.1.7      
## [16] plyr_1.8.3           stringr_1.0.0        munsell_0.4.2       
## [19] gtable_0.1.2         futile.logger_1.4.1  caTools_1.17.1      
## [22] evaluate_0.7         labeling_0.3         latticeExtra_0.6-26 
## [25] Biobase_2.28.0       geneplotter_1.46.0   AnnotationDbi_1.30.1
## [28] highr_0.5            proto_0.3-10         KernSmooth_2.23-15  
## [31] acepack_1.3-3.3      xtable_1.7-4         scales_0.2.5        
## [34] formatR_1.2          gdata_2.17.0         Hmisc_3.16-0        
## [37] annotate_1.46.1      XVector_0.8.0        gridExtra_2.0.0     
## [40] ggplot2_1.0.1        digest_0.6.8         stringi_0.5-5       
## [43] grid_3.2.0           bitops_1.0-6         tools_3.2.0         
## [46] magrittr_1.5         RSQLite_1.0.0        Formula_1.2-1       
## [49] cluster_2.0.3        futile.options_1.0.0 MASS_7.3-43         
## [52] rmarkdown_0.7        rpart_4.1-10         nnet_7.3-10
```
