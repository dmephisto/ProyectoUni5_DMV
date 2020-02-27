	#### Script to answer the exercises (a-j)
	#### Diego Montesinos Valencia 2020

#### Use a docker container with vcftools
### Note: Remember to run vcf in a container by mounting a volume (-v) and deleting it when you finish running (--rm)
sudo docker run --rm -v /home/dmephisto/Escritorio/Unit5/VCFtools/data:/data biocontainers/vcftools:0.1.15 vcftools --help

### Note: Remember to change the absolute path of the previous command, depending on the path of the working directory


## Create a variable called vcftools using the previous command
vcftools="sudo docker run --rm -v /home/dmephisto/Escritorio/Unit5/VCFtools/data:/data biocontainers/vcftools:0.1.15 vcftools"

#### Note: To use vcftools, "$vcftools" will be placed once the previous variable is created

## a) How many individuals and variants (SNPs) does the file have?
$vcftools --vcf wolves.vcf

## b) Calculate the frequency of each allele for all individuals within the file and save the result in a file
$vcftools --vcf wolves.vcf --freq --out frequencies

## c) How many sites in the file do not have missing data?
$vcftools --vcf wolves.vcf --max-missing 1

## d) Calculate the frequency of each allele for all individuals but only for sites without missing data
## save the result in a file
$vcftools --vcf wolves.vcf --max-missing 1 --freq --out wolves_nomissing

## e) How many sites have a minor allele frequency <0.05?
$vcftools --vcf wolves.vcf --max-maf 0.05

## f) Calculate the heterozygosity of each individual
$vcftools --vcf wolves.vcf --het --out wolves_het

## g) Calculate nucleotide diversity per site
$vcftools --vcf wolves.vcf --site-pi --out nucleotide_diversity

## h) Calculate nucleotide diversity per site only for chromosome 3 sites
$vcftools --vcf wolves.vcf --site-pi --chr chr03 --out chr03

## i) Filter sites that have a minor allele frequency <0.05
## create a new file called wolves_maf05.vcf
$vcftools --vcf wolves.vcf --max-maf 0.05 --recode; mv ../data/out.recode.vcf ../data/wolves_maf05.vcf

## j) Convert the wolves_maf05.vcf file to plink format
$vcftools --vcf wolves_maf05.vcf --plink

