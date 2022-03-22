FileName="DNAseq"
Nb=1000

mkdir ./files
rm ./files/combined.csv

for i in {1..100}
do
  python ./1-DNAgen.py $(printf "files/"$FileName"%03d" $i) $Nb
  python ./2-BASE.py $(printf "files/"$FileName"%03d" $i)
  cat $(printf "files/"$FileName"%03d"".count" $i) >> "./files/combined.csv"
done

Rscript ./3-histograms.R "./files/combined.csv"
