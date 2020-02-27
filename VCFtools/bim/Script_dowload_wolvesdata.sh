#### Script to download wolves data in vcf format
#### Diego Montesinos Valencia 2020

## Make data directory
mkdir -p ../data

## Download the data of the wolves in vcf in the data directory
wget https://datadryad.org/stash/downloads/file_stream/6226 -P ../data

## Rename File 6226 to wolves.vcf
mv ../data/6226 ../data/wolves.vcf
