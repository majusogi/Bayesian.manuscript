## WorkFlow to Identify recent exchanges in the genome pair

1. Run 

To mask conserved seq genes in the genome: 

module load bedtools/2.25 
bedtools maskfasta -fi mauve.2537562117.fa -bed to.mask.txt -fo masked.2537562117.fa -mc X

sed 's/X*//g' maksed.110.genome.CUT2.fa > ensayo.fa

tr -d '\n' < ensayo.fa > ensayo2.fa

input file: to.mask.txt

