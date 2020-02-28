# README

> Diego Montesinos Valencia
> Project Unit 5, 2020-2

## General information
This repository contains the scripts and data used in the unit 5 project of the Introduction to Bioinformatics class 2020-2. Two analyzes were performed: in the first one VCFtools was used, so the "VCFtools" folder contains the scripts and the data that was used; in the second one a PCA was made in RStudio, so the "PCA" directory contains the scripts and the data used.

## Data used
Data for this project was taken from the [Dryad Digital Repository](https://datadryad.org/stash/dataset/doi:10.5061/dryad.8g0s3) respository corresponding to the publication titled **Targeted capture and resequencing of 1040 genes reveal environmentally driven functional variation in gray wolves** ([Schweizer et al., 2015](https://onlinelibrary.wiley.com/doi/abs/10.1111/mec.13467)).

> References
>
> 1. Schweizer, Rena M. et al. (2015), Data from: Targeted capture and resequencing of 1040 genes reveal environmentally driven functional variation in gray wolves, Dryad, Dataset, https://doi.org/10.5061/dryad.8g0s3

## Analyses run

### VCFtools
The program [VCFtools](https://vcftools.github.io/index.html) v0.1.16 (Danecek et al., 2011) was used to answer the items (a-j) that are detailed in the *Script_exercises* of the *bim* directory in the *VCFtools* directory.

For this part it is necessary to have Docker installed.

To perform this analysis it is necessary to execute the scripts of the bim directory located in the *VCFtools* directory in the following order:

1. *Script_dowload_wolvesdata*.sh
2. *Script_exercises.sh*

> Note: in the *Script_exercises.sh* it is necessary to change an absolute path when using docker, depending on the working directory.



> References
>
> 1. The Variant Call Format and VCFtools, Petr Danecek, Adam Auton, Goncalo Abecasis, Cornelis A. Albers, Eric Banks, Mark A. DePristo, Robert Handsaker, Gerton Lunter, Gabor Marth, Stephen T. Sherry, Gilean McVean, Richard Durbin and 1000 Genomes Project Analysis Group, Bioinformatics, 2011.

### PCA plots

In the first instance it is necessary to convert the *wolves.vcf* file to the plink format (.fam, .bim, .bed). For this it is necessary to have or download [PLINK](https://www.cog-genomics.org/plink/1.9) v1.9 beta (Chang et al., 2015), the *Script_wolves_vcf2plink* download PLINK and convert the wolves.vcf file to the plink formats that are required.

RStudio (R Core Team, 2019) was used for this part (it is necessary to have it installed). Therefore, the file *Script_Wolves.Rmd* is written in R markdown and must be opened using RStudio.

Principal Component Analyses (PCAs) are a tool to detect genetic variation within a species/population. The R markdown *Script_Wolves.Rmd* of the *bim* directory in the *PCA* directory, runs the [SNPRelate](https://bioconductor.org/packages/release/bioc/html/SNPRelate.html) v1.20.1 package (Zheng et al., 2012) to calcuate principal components of  the PCA and thus graph them using the [ggplot2](https://ggplot2.tidyverse.org) v3.2.1 package (Wickham et al., 2016).

As a result of this analysis, in the *bim* directory of the *PCA* directory there is an HTML report called *Script_Wolves.html*.

To perform this analysis it is necessary to execute the scripts of the *bim* directory located in the *PCA* directory in the following order:

1. *Script_dowload_wolvesdata.sh*
2. *Script_wolves_vcf2plink.sh*
3. *Script_Wolves.Rmd*

> Note: in the *Script_wolves_vcf2plink.sh* it is necessary check the download link of PLINK in the following link (the link may change) https://www.cog-genomics.org/plink/1.9/



> References
>
> 1. Chang CC, Chow CC, Tellier LCAM, Vattikuti S, Purcell SM, Lee JJ (2015) Second-generation PLINK: rising to the challenge of larger and richer datasets. GigaScience, 4.
>
> 2. Xiuwen Zheng, David Levine, Jess Shen, Stephanie M. Gogarten, Cathy Laurie, Bruce S. Weir. A High-performance Computing Toolset for Relatedness and Principal Component Analysis of SNP Data. Bioinformatics 2012; doi: 10.1093/bioinformatics/bts606.
> 3. H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.





