# CircModel
Comprehensive comparison of differential expression models applied to circRNA count matrix.

Methods used in the article . . .

<!-- [![DOI](https://zenodo.org/badge/227668672.svg)](https://zenodo.org/badge/latestdoi/227668672) -->

Here we present several aspects of the circRNA data analysis, evaluating:
<ul>
  <li> the Goodness Of Fit (GOF) between real data and the distributional assumptions of some differential expression detection methods; </li>
  <li> the ability of differential expression detection methods to control the Type I Error; </li>
  <li> the ability of differential expression detection methods in terms of Consistency; </li> 
  <li> the power of differntial expression detection methods. </li> </ul>

Data used in this analysis was retrieved from available GEO repository of Ribo-depleted RNA-seq samples of two or more different conditions (`GSE136200`, `GSE86356`, `PRJNA484546`, `GSE52463`).

## Goodness of Fit (GOF) evaluation
The directory _./goodness_of_fit/_ contains the _GOF.Rmd_ file which loads circRNA data, estimates several parametric models on the real datasets and evaluates the goodness of fit for each dataset. 

### Robustness
The directory _./robustness/_ contains:
<ul>
  <li> getPheno.R which create a file .txt containing B combination of samples for the creation of synthetic datasets; </li>
  <li> glm_glmm_paired.R and DEscripts.R which estimates the Negative Binomial and GLMM models for each synthetic datasets saving the results as .RData; </li>
  <li> SensitivityPrecision.Rnw which computes specificity, sensitivity and other measures considering p-values generated by each method in the simulations; </li>
  <li> plot_eval.R which puts the information from all datasets together and then plots the results.</li>
</ul>

### Consinstency
The directory _./consinstency/_ contains:
<ul>
<li> consistency_replicability.Rmd which loads DECs results from robustness evaluation and then tests the differential expression detection methods in terms of Concordance At the Top. </li>
</ul>

## Type I Error Control
The directory _./type_I_error_control/_ contains the _TIEC.Rmd_ file which loads DECs results estimated using glm_glmm_paired.R and DEscripts.R for the evaluation of the ability of differential expression detection methods to control the type first error using mock datasets, without differentially abundant features, generated using getSampleShuffle.R script.

## Data
Since the entire data production took a long time, the _./data/_ directory contains several outputs from all the analyses. This should make it easier for the user to replicate the results.

## Instructions and R environment
To replicate the analyses it is strongly suggested to clone or download the entire github directory. Some of the functions used this paper are adapted from the work of: _Assessment of statistical methods from single cell, bulk RNA-seq and metagenomics applied to microbiome data._, their original code is available at https://github.com/mcalgaro93/sc2meta. The analyses run in many version of R during the development, R 4.1.0 was the final R version on which the methods worked. 

Here the `sessionInfo()`:
```
R version 4.1.0 (2021-05-18)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 20.04.2 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.9.0
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.9.0

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8     LC_MONETARY=en_US.UTF-8   
 [6] LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                  LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
[1] compiler_4.1.0    htmltools_0.5.1.1 tools_4.1.0       rmarkdown_2.8     knitr_1.33        xfun_0.23         digest_0.6.27    
[8] rlang_0.4.11      evaluate_0.14 
```
