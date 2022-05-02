FileName="DNAseq" # input variable 1 = string with which to prefix file names of .seq and .count files generated in for loop below
Nb=1000 # input variable 2 = /N/umber of /b/ase pairs generated per sequence file (.seq) by DNAgen.py in for loop below

mkdir ./files # initializing directory
rm ./files/combined.csv # removing previously generated file to demonstrate file generation in for loop below

for i in {1..100} # do the following 100 times
do
  python ./1-DNAgen.py $(printf "files/"$FileName"%03d" $i) $Nb # generate .seq files
  python ./2-BASE.py $(printf "files/"$FileName"%03d" $i) # generate .count files
  cat $(printf "files/"$FileName"%03d"".count" $i) >> "./files/combined.csv" # concatenate all .count files into combined.csv
done

Rscript ./3-histograms.R "./files/combined.csv" # make histograms using data in combined.csv
