# DESeq Analysis
Quynh Tran  
August 2, 2015  




This script performs the DESeq analyses on the Juvenile HFD studies.  This script was most recently run on Wed Mar 30 14:58:02 2016.  This uses the input data from the kallisto runs.



The counts data, derived from kallisto and get_highest_kallisto_count_transcript.Rmd are located in Unique_Estimated_Counts_WAT.csv and Unique_Estimated_Counts_Quad.csv.  The sample mapping file is located in ../sample-mapping.csv.  The annotations are from the file ENSEMBL Annotation - Transcripts.csv.



```
## 
## WAT Descriptive statistics
## =======================================================
## Statistic           N     Mean   St. Dev. Min    Max   
## -------------------------------------------------------
## IonXpress_RNA_026 20,546 1,136.0 10,271.0  0   759,414 
## IonXpress_RNA_027 20,546  899.0  7,661.0   0   481,821 
## IonXpress_RNA_028 20,546  830.0  5,172.0   0   433,831 
## IonXpress_RNA_029 20,546 1,030.0 6,593.0   0   414,986 
## IonXpress_RNA_030 20,546 1,019.0 8,952.0   0   579,504 
## IonXpress_RNA_031 20,546  931.0  5,996.0   0   388,145 
## IonXpress_RNA_032 20,546  896.0  5,487.0   0   356,727 
## IonXpress_RNA_033 20,546  872.0  5,876.0   0   438,052 
## IonXpress_RNA_034 20,546  942.0  7,084.0   0   510,524 
## IonXpress_RNA_035 20,546  911.0  6,085.0   0   412,945 
## IonXpress_RNA_036 20,546  805.0  3,573.0   0   251,213 
## IonXpress_RNA_037 20,546  874.0  5,610.0   0   321,656 
## IonXpress_RNA_038 20,546  772.0  5,969.0   0   533,584 
## IonXpress_RNA_039 20,546  815.0  5,629.0   0   389,594 
## IonXpress_RNA_040 20,546  870.0  12,815.0  0  1,453,430
## IonXpress_RNA_041 20,546  834.0  7,162.0   0   541,135 
## IonXpress_RNA_042 20,546  937.0  7,696.0   0   476,103 
## IonXpress_RNA_043 20,546  847.0  5,822.0   0   384,315 
## IonXpress_RNA_044 20,546  860.0  5,520.0   0   374,466 
## -------------------------------------------------------
```

```
## 
## QUAD Descriptive statistics
## =======================================================
## Statistic           N     Mean   St. Dev. Min    Max   
## -------------------------------------------------------
## IonXpress_RNA_045 18,464 1,014.0 18,472.0  0  1,666,940
## IonXpress_RNA_046 18,464  992.0  15,705.0  0  1,109,870
## IonXpress_RNA_059 18,464  891.0  15,592.0  0  1,066,150
## IonXpress_RNA_060 18,464 1,010.0 19,224.0  0  1,709,080
## IonXpress_RNA_061 18,464 1,011.0 16,986.0  0  1,270,810
## IonXpress_RNA_062 18,464  959.0  14,759.0  0   788,137 
## IonXpress_RNA_063 18,464 1,052.0 17,112.0  0  1,198,510
## IonXpress_RNA_064 18,464 1,173.0 18,611.0  0  1,358,210
## IonXpress_RNA_47  18,464  952.0  16,491.0  0  1,208,780
## IonXpress_RNA_48  18,464 1,000.0 16,573.0  0  1,237,440
## IonXpress_RNA_49  18,464  938.0  15,359.0  0  1,114,310
## IonXpress_RNA_50  18,464 1,096.0 16,997.0  0  1,129,160
## IonXpress_RNA_51  18,464  938.0  15,762.0  0  1,179,960
## IonXpress_RNA_52  18,464  849.0  13,353.0  0  1,028,780
## IonXpress_RNA_53  18,464  990.0  15,388.0  0  1,022,380
## IonXpress_RNA_54  18,464  883.0  14,787.0  0  1,049,510
## IonXpress_RNA_55  18,464 1,350.0 23,230.0  0  1,725,240
## IonXpress_RNA_56  18,464 1,033.0 17,245.0  0  1,281,270
## IonXpress_RNA_57  18,464 1,003.0 19,042.0  0  1,583,020
## IonXpress_RNA_58  18,464  993.0  16,394.0  0  1,198,470
## -------------------------------------------------------
```



Table: Sum counts of WAT

 IonXpress_RNA_026   IonXpress_RNA_027   IonXpress_RNA_028   IonXpress_RNA_029   IonXpress_RNA_030   IonXpress_RNA_031   IonXpress_RNA_032   IonXpress_RNA_033   IonXpress_RNA_034   IonXpress_RNA_035   IonXpress_RNA_036   IonXpress_RNA_037   IonXpress_RNA_038   IonXpress_RNA_039   IonXpress_RNA_040   IonXpress_RNA_041   IonXpress_RNA_042   IonXpress_RNA_043   IonXpress_RNA_044
------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------
          23340422            18471646            17049308            21161430            20944002            19131039            18414141            17915008            19363799            18712520            16537715            17952538            15857919            16754140            17884106            17132159            19257253            17405180            17660396



Table: Sum counts of QUAD

 IonXpress_RNA_045   IonXpress_RNA_046   IonXpress_RNA_059   IonXpress_RNA_060   IonXpress_RNA_061   IonXpress_RNA_062   IonXpress_RNA_063   IonXpress_RNA_064   IonXpress_RNA_47   IonXpress_RNA_48   IonXpress_RNA_49   IonXpress_RNA_50   IonXpress_RNA_51   IonXpress_RNA_52   IonXpress_RNA_53   IonXpress_RNA_54   IonXpress_RNA_55   IonXpress_RNA_56   IonXpress_RNA_57   IonXpress_RNA_58
------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  ------------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------  -----------------
          18715553            18318996            16448226            18655011            18665685            17705407            19423465            21659001           17586655           18473806           17322340           20240449           17309832           15667925           18272653           16305065           24925414           19074794           18520194           18330614
# Adipose Tissue

The adipose tissue samples are all eWAT samples

## Adipose Overall Model

This model used only the adipose tissue data, and tested for changes for the interaction between feeding state and diet, then for the main effects of each.



Using the combined model, we identified 1815 transcripts with a significant interaction between feeding and diet in WAT.  There are 123 genes had a main effect with respect to Diet and 87 genes had a main effect with respect to Feeding State.


Table: Top Hits for Effects of Diet

        ensembl_transcript_id    baseMean   log2FoldChange   lfcSE    stat   pvalue   padj   log2FoldChange_Diet   lfcSE_Diet   pvalue_Diet   padj_Diet   log2FoldChange_Feeding   lfcSE_Feeding   pvalue_Feeding   padj_Feeding       X  gene_biotype     external_gene_name   ensembl_gene_id    
------  ----------------------  ---------  ---------------  ------  ------  -------  -----  --------------------  -----------  ------------  ----------  -----------------------  --------------  ---------------  -------------  ------  ---------------  -------------------  -------------------
18749   ENSMUST00000171091           24.1            -28.6    3.85   -7.43        0      0                  21.8         2.71             0           0                     20.4            2.81                0              0   47405  protein_coding   Iqcf6                ENSMUSG00000091129 
13052   ENSMUST00000098345           22.4            -26.9    3.91   -6.89        0      0                  21.9         2.83             0           0                     19.7            2.94                0              0   97853  protein_coding   Prss44               ENSMUSG00000032493 
4635    ENSMUST00000032541           19.7            -25.9    3.87   -6.69        0      0                  21.7         2.85             0           0                     20.0            2.96                0              0   57144  protein_coding   2900092C05Rik        ENSMUSG00000030385 
20051   ENSMUST00000189413           18.8            -21.2    3.91   -5.42        0      0                  21.5         2.91             0           0                     19.4            3.03                0              0   61035  protein_coding   Kif14                ENSMUSG00000041498 
551     ENSMUST00000005352           35.5            -21.4    4.73   -4.53        0      0                  22.1         3.38             0           0                     20.5            3.54                0              0   29556  protein_coding   Corin                ENSMUSG00000005220 



Table: Top Hits for Effects of Feeding

        ensembl_transcript_id    baseMean   log2FoldChange   lfcSE    stat   pvalue   padj   log2FoldChange_Diet   lfcSE_Diet   pvalue_Diet   padj_Diet   log2FoldChange_Feeding   lfcSE_Feeding   pvalue_Feeding   padj_Feeding       X  gene_biotype     external_gene_name   ensembl_gene_id    
------  ----------------------  ---------  ---------------  ------  ------  -------  -----  --------------------  -----------  ------------  ----------  -----------------------  --------------  ---------------  -------------  ------  ---------------  -------------------  -------------------
18749   ENSMUST00000171091           24.1           -28.57    3.85   -7.43        0      0                 21.84        2.714         0.000       0.000                     20.4           2.812                0              0   47405  protein_coding   Iqcf6                ENSMUSG00000091129 
14369   ENSMUST00000106526          212.8            21.15    4.59    4.61        0      0                 -1.39        2.589         0.591       0.823                    -24.9           3.580                0              0   19656  protein_coding   Acsm3                ENSMUSG00000030935 
4214    ENSMUST00000030848          498.1             6.05    1.33    4.54        0      0                 -3.19        0.861         0.000       0.014                     -6.3           0.931                0              0   60166  protein_coding   Rbp7                 ENSMUSG00000028996 
4635    ENSMUST00000032541           19.7           -25.89    3.87   -6.69        0      0                 21.66        2.847         0.000       0.000                     20.0           2.959                0              0   57144  protein_coding   2900092C05Rik        ENSMUSG00000030385 
13052   ENSMUST00000098345           22.4           -26.95    3.91   -6.89        0      0                 21.89        2.830         0.000       0.000                     19.7           2.941                0              0   97853  protein_coding   Prss44               ENSMUSG00000032493 



Table: Top Hits for Interaction between Diet and Feeding

        ensembl_transcript_id    baseMean   log2FoldChange   lfcSE    stat   pvalue   padj   log2FoldChange_Diet   lfcSE_Diet   pvalue_Diet   padj_Diet   log2FoldChange_Feeding   lfcSE_Feeding   pvalue_Feeding   padj_Feeding        X  gene_biotype     external_gene_name   ensembl_gene_id    
------  ----------------------  ---------  ---------------  ------  ------  -------  -----  --------------------  -----------  ------------  ----------  -----------------------  --------------  ---------------  -------------  -------  ---------------  -------------------  -------------------
18749   ENSMUST00000171091          24.06           -28.57    3.85   -7.43        0      0                 21.84        2.714         0.000       0.000                    20.39           2.812            0.000          0.000    47405  protein_coding   Iqcf6                ENSMUSG00000091129 
13052   ENSMUST00000098345          22.36           -26.95    3.91   -6.89        0      0                 21.89        2.830         0.000       0.000                    19.73           2.941            0.000          0.000    97853  protein_coding   Prss44               ENSMUSG00000032493 
4635    ENSMUST00000032541          19.70           -25.89    3.87   -6.69        0      0                 21.66        2.847         0.000       0.000                    19.95           2.959            0.000          0.000    57144  protein_coding   2900092C05Rik        ENSMUSG00000030385 
15701   ENSMUST00000113779          28.05            30.00    4.47    6.71        0      0                -15.40        2.942         0.000       0.000                   -15.47           3.211            0.000          0.001    68936  protein_coding   Eda                  ENSMUSG00000059327 
12282   ENSMUST00000091701           7.33           -24.92    3.97   -6.27        0      0                  4.59        2.173         0.035       0.202                     3.98           2.305            0.084          0.389     2786  protein_coding   Hist1h3a             ENSMUSG00000069265 
20060   ENSMUST00000189511          17.97           -27.18    4.35   -6.24        0      0                  6.45        2.470         0.009       0.097                     4.77           2.623            0.069          0.362    62988  protein_coding   Gm28269              ENSMUSG00000101818 
8043    ENSMUST00000052690         115.75           -29.90    4.84   -6.17        0      0                  6.26        2.787         0.025       0.169                     5.08           2.970            0.088          0.395    37342  protein_coding   Prss54               ENSMUSG00000048400 
19482   ENSMUST00000179408          35.28           -26.63    4.32   -6.17        0      0                  5.48        2.398         0.022       0.159                     3.12           2.556            0.222          0.564    24889  protein_coding   Rbm31y               ENSMUSG00000095365 
6702    ENSMUST00000043553          13.54           -25.04    4.08   -6.13        0      0                  4.90        2.231         0.028       0.181                     2.90           2.379            0.222          0.565    85188  protein_coding   1700063H04Rik        ENSMUSG00000040657 
19712   ENSMUST00000181860          18.50            30.00    4.97    6.04        0      0                -15.59        3.262         0.000       0.001                   -15.66           3.544            0.000          0.002    27704  protein_coding   Car1                 ENSMUSG00000027556 
15439   ENSMUST00000112397          10.86           -26.93    4.62   -5.83        0      0                  6.78        2.726         0.013       0.120                     5.25           2.885            0.069          0.361   105396  protein_coding   Csrnp3               ENSMUSG00000044647 
45      ENSMUST00000000342         223.31             6.46    1.15    5.62        0      0                 -3.56        0.749         0.000       0.001                    -3.64           0.796            0.000          0.002    97241  protein_coding   Ccl11                ENSMUSG00000020676 
4722    ENSMUST00000032958         350.73             6.69    1.19    5.63        0      0                 -2.88        0.769         0.000       0.014                    -4.60           0.826            0.000          0.000    73745  protein_coding   Ucp3                 ENSMUSG00000032942 
10455   ENSMUST00000072518          30.44           -28.40    5.04   -5.63        0      0                  6.33        2.959         0.033       0.197                     5.68           3.148            0.071          0.366    44944  protein_coding   Tgif2lx2             ENSMUSG00000100194 
17339   ENSMUST00000150989         153.10           -29.58    5.32   -5.56        0      0                  6.31        3.130         0.044       0.229                     4.12           3.336            0.216          0.561    37875  protein_coding   Fbxw10               ENSMUSG00000090173 
8366    ENSMUST00000055071       10363.93             7.35    1.33    5.54        0      0                 -3.88        0.864         0.000       0.004                    -3.88           0.921            0.000          0.004    54339  protein_coding   Ifi27l2a             ENSMUSG00000079017 
15125   ENSMUST00000110473          25.07           -29.30    5.32   -5.50        0      0                  7.91        3.227         0.014       0.127                     6.78           3.420            0.047          0.308    86414  protein_coding   Hist1h2bp            ENSMUSG00000069308 
8532    ENSMUST00000056355         613.44             6.06    1.11    5.48        0      0                 -2.92        0.719         0.000       0.008                    -3.80           0.768            0.000          0.000    30545  protein_coding   Nat8l                ENSMUSG00000048142 
218     ENSMUST00000001854        1099.36             7.08    1.30    5.43        0      0                 -3.81        0.848         0.000       0.004                    -3.11           0.903            0.001          0.029    19471  protein_coding   Slc7a10              ENSMUSG00000030495 
11454   ENSMUST00000081657          12.74           -26.86    4.96   -5.41        0      0                 20.94        3.394         0.000       0.000                    19.63           3.555            0.000          0.000   108597  protein_coding   Gm4763               ENSMUSG00000058717 

<div class="figure">
<img src="figures/deseq-MA-plot-interaction-WAT-1.png" alt="MA Plot for Interaction results in WAT"  />
<p class="caption">MA Plot for Interaction results in WAT</p>
</div>

![](figures/deseq-PCA-plot-WAT-1.png)![](figures/deseq-PCA-plot-WAT-2.png)![](figures/deseq-PCA-plot-WAT-3.png)![](figures/deseq-PCA-plot-WAT-4.png)


# Muscle Tissue

The muscle tissue samples are all quadriceps samples

## Muscle Overall Model

This model used only the quadricep tissue data, and tested for changes for the interaction between feeding state and diet, then for the main effects of each.


  Using the combined model, we identified NA transcripts with a significant interaction between feeding and diet in quadriceps.  There are 3130 genes that had a main effect with respect to Feeding State.


Table: Top Hits for Effects of Diet

       ensembl_transcript_id    baseMean   log2FoldChange   lfcSE    stat   pvalue   padj   log2FoldChange_Diet   lfcSE_Diet   pvalue_Diet   padj_Diet   log2FoldChange_Feeding   lfcSE_Feeding   pvalue_Feeding   padj_Feeding       X  gene_biotype     external_gene_name   ensembl_gene_id    
-----  ----------------------  ---------  ---------------  ------  ------  -------  -----  --------------------  -----------  ------------  ----------  -----------------------  --------------  ---------------  -------------  ------  ---------------  -------------------  -------------------
3867   ENSMUST00000030508           54.1           -0.634   0.297   -2.14    0.033      1                 0.888        0.191             0       0.052                    0.462           0.217            0.034          0.117   54259  protein_coding   Pax7                 ENSMUSG00000028736 
549    ENSMUST00000005705         1026.2           -0.225   0.096   -2.34    0.019      1                 0.252        0.060             0       0.087                   -0.075           0.068            0.275          0.498   33773  protein_coding   Trim28               ENSMUSG00000005566 
3899   ENSMUST00000030645         2126.9           -0.360   0.163   -2.20    0.028      1                 0.422        0.103             0       0.087                   -0.681           0.116            0.000          0.000   37174  protein_coding   Cnksr1               ENSMUSG00000028841 
7335   ENSMUST00000050916           76.1            0.659   0.228    2.89    0.004      1                -0.583        0.144             0       0.087                   -0.386           0.159            0.015          0.065   58016  protein_coding   Snx33                ENSMUSG00000032733 
7686   ENSMUST00000053871          143.6           -0.734   0.311   -2.36    0.018      1                 0.816        0.200             0       0.087                    0.934           0.222            0.000          0.000   22575  protein_coding   Ckap4                ENSMUSG00000046841 



Table: Top Hits for Effects of Feeding

        ensembl_transcript_id    baseMean   log2FoldChange   lfcSE     stat   pvalue   padj   log2FoldChange_Diet   lfcSE_Diet   pvalue_Diet   padj_Diet   log2FoldChange_Feeding   lfcSE_Feeding   pvalue_Feeding   padj_Feeding        X  gene_biotype     external_gene_name   ensembl_gene_id    
------  ----------------------  ---------  ---------------  ------  -------  -------  -----  --------------------  -----------  ------------  ----------  -----------------------  --------------  ---------------  -------------  -------  ---------------  -------------------  -------------------
9125    ENSMUST00000067354         2869.6            0.551   0.408    1.351    0.177      1                 0.152        0.239         0.526       0.999                    -7.00           0.293                0              0      142  protein_coding   8430408G22Rik        ENSMUSG00000048489 
12855   ENSMUST00000105875        27856.0           -0.046   0.246   -0.187    0.852      1                -0.008        0.155         0.960       1.000                    -3.52           0.174                0              0    81577  protein_coding   Trim63               ENSMUSG00000028834 
2583    ENSMUST00000025279         3794.0           -0.218   0.133   -1.637    0.102      1                 0.178        0.083         0.032       0.800                    -1.88           0.094                0              0    68773  protein_coding   Npc1                 ENSMUSG00000024413 
14768   ENSMUST00000118936         2808.3           -0.111   0.152   -0.728    0.467      1                 0.010        0.095         0.920       0.999                    -1.80           0.108                0              0   107766  protein_coding   Gucd1                ENSMUSG00000033416 
2112    ENSMUST00000022986        32168.7           -0.108   0.282   -0.384    0.701      1                 0.075        0.178         0.674       0.999                    -3.15           0.200                0              0     4159  protein_coding   Fbxo32               ENSMUSG00000022358 
12468   ENSMUST00000102745          933.7           -0.198   0.265   -0.749    0.454      1                 0.202        0.171         0.239       0.999                     2.96           0.187                0              0    49555  protein_coding   Tnfaip2              ENSMUSG00000021281 
4116    ENSMUST00000031490         4571.6           -0.119   0.147   -0.810    0.418      1                 0.206        0.092         0.025       0.758                    -1.55           0.104                0              0    62696  protein_coding   Ulk1                 ENSMUSG00000029512 
4635    ENSMUST00000033880         2152.7           -0.059   0.185   -0.319    0.750      1                -0.061        0.115         0.595       0.999                    -1.94           0.131                0              0    14161  protein_coding   Eif4ebp1             ENSMUSG00000031490 
14759   ENSMUST00000118762         1708.3            0.077   0.177    0.434    0.664      1                 0.045        0.110         0.680       0.999                    -1.86           0.125                0              0    89926  protein_coding   Kctd20               ENSMUSG00000005936 
4701    ENSMUST00000034091         1933.6            0.143   0.165    0.864    0.388      1                -0.016        0.103         0.874       0.999                    -1.70           0.117                0              0    95482  protein_coding   Rbl2                 ENSMUSG00000031666 
6141    ENSMUST00000042581          608.7           -0.060   0.253   -0.237    0.813      1                 0.049        0.165         0.766       0.999                     2.59           0.179                0              0    35440  protein_coding   6430571L13Rik        ENSMUSG00000037977 
6975    ENSMUST00000048319         1617.9           -0.032   0.174   -0.182    0.856      1                -0.064        0.108         0.551       0.999                    -1.76           0.123                0              0    31167  protein_coding   Zfyve1               ENSMUSG00000042628 
2017    ENSMUST00000022623         2550.3           -0.074   0.138   -0.539    0.590      1                 0.144        0.088         0.102       0.958                     1.34           0.098                0              0    74675  protein_coding   Trim35               ENSMUSG00000022043 
9834    ENSMUST00000074949         1849.4           -0.287   0.245   -1.173    0.241      1                 0.374        0.153         0.014       0.693                    -2.37           0.173                0              0    43544  protein_coding   Tmem140              ENSMUSG00000057137 
10603   ENSMUST00000084513        24248.0            0.207   0.267    0.773    0.439      1                 0.002        0.169         0.989       1.000                    -2.57           0.189                0              0    27745  protein_coding   Tacc2                ENSMUSG00000030852 
4279    ENSMUST00000032264         2362.6           -0.244   0.247   -0.989    0.323      1                 0.134        0.154         0.387       0.999                    -2.37           0.175                0              0    21256  protein_coding   Gabarapl1            ENSMUSG00000030161 
14904   ENSMUST00000120664         1244.4            0.215   0.133    1.619    0.105      1                -0.038        0.082         0.647       0.999                    -1.27           0.094                0              0    18438  protein_coding   Pde4d                ENSMUSG00000021699 
11425   ENSMUST00000093962           98.2           -0.140   0.290   -0.483    0.629      1                 0.055        0.212         0.796       0.999                     2.75           0.206                0              0    27759  protein_coding   Ccnd1                ENSMUSG00000070348 
5129    ENSMUST00000035842          267.6            0.737   0.347    2.125    0.034      1                -0.405        0.204         0.047       0.862                    -3.28           0.248                0              0    21794  protein_coding   Rassf4               ENSMUSG00000042129 
1386    ENSMUST00000020223         1323.3           -0.181   0.203   -0.889    0.374      1                 0.208        0.126         0.099       0.958                    -1.85           0.144                0              0   100212  protein_coding   Tcp11l2              ENSMUSG00000020034 


![](figures/deseq-PCA-heatmap-QUAD-1.png)![](figures/deseq-PCA-heatmap-QUAD-2.png)![](figures/deseq-PCA-heatmap-QUAD-3.png)![](figures/deseq-PCA-heatmap-QUAD-4.png)
# Session Information


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
##  [1] grid      parallel  stats4    stats     graphics  grDevices utils    
##  [8] datasets  methods   base     
## 
## other attached packages:
##  [1] circlize_0.3.5             ComplexHeatmap_1.6.0      
##  [3] pheatmap_1.0.8             ggplot2_2.1.0             
##  [5] DESeq2_1.10.1              RcppArmadillo_0.6.600.4.0 
##  [7] Rcpp_0.12.4                SummarizedExperiment_1.0.2
##  [9] Biobase_2.30.0             GenomicRanges_1.22.4      
## [11] GenomeInfoDb_1.6.3         IRanges_2.4.8             
## [13] S4Vectors_0.8.11           BiocGenerics_0.16.1       
## [15] stargazer_5.2              knitr_1.12.3              
## 
## loaded via a namespace (and not attached):
##  [1] genefilter_1.52.1    shape_1.4.2          GetoptLong_0.1.2    
##  [4] locfit_1.5-9.1       splines_3.2.2        lattice_0.20-33     
##  [7] colorspace_1.2-6     htmltools_0.3.5      yaml_2.1.13         
## [10] survival_2.38-3      XML_3.98-1.4         foreign_0.8-66      
## [13] DBI_0.3.1            BiocParallel_1.4.3   RColorBrewer_1.1-2  
## [16] lambda.r_1.1.7       plyr_1.8.3           stringr_1.0.0       
## [19] zlibbioc_1.16.0      munsell_0.4.3        gtable_0.2.0        
## [22] futile.logger_1.4.1  GlobalOptions_0.0.9  evaluate_0.8.3      
## [25] labeling_0.3         latticeExtra_0.6-28  geneplotter_1.48.0  
## [28] AnnotationDbi_1.32.3 highr_0.5.1          acepack_1.3-3.3     
## [31] xtable_1.8-2         scales_0.4.0         formatR_1.3         
## [34] Hmisc_3.17-2         annotate_1.48.0      XVector_0.10.0      
## [37] gridExtra_2.2.1      rjson_0.2.15         digest_0.6.9        
## [40] stringi_1.0-1        tools_3.2.2          magrittr_1.5        
## [43] RSQLite_1.0.0        Formula_1.2-1        cluster_2.0.3       
## [46] futile.options_1.0.0 whisker_0.3-2        dendextend_1.1.8    
## [49] rmarkdown_0.9.5      rpart_4.1-10         nnet_7.3-12
```
