### Script to convert wolves.vcf to format plink (.bed, .fam, .bim)
### Diego Montesinos Valencia 2020

## Dowload Plink 1.9 for Linux 64-bit
#Check the download link in the following link (the link may change)
#https://www.cog-genomics.org/plink/1.9/
wget http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20200219.zip

## Extract plink in the bim directory
#Check the name of the downloaded file as it can change
unzip plink_linux_x86_64_20200219.zip

## Convert the wolves.vcf file to plink
#The flag "--chr-set 38" corresponds to the number of chromosomes of the wolves in this case
./plink --vcf ../data/wolves.vcf --chr-set 38 --out ../data/wolves



