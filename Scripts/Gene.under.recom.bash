## WorkFlow to Identify recent exchanges in the genome pair

1. Run 

#####To mask conserved seq genes in the genome: 

input file: to.mask.txt
awk '{print $2"\t"$9"\t"$10}' bhit.merge.vs.conser.to.mask.txt > to.mask.txt

module load bedtools/2.25 
bedtools maskfasta -fi mauve.2537562117.fa -bed to.mask.txt -fo masked.2537562117.fa -mc X

sed 's/X*//g' maksed.110.genome.CUT2.fa > ensayo.fa

tr -d '\n' < ensayo.fa > ensayo2.fa

####Blast of candidate genes vs. masked.genoems.fna
#### Best hit
blat -minIdentity=90 -tileSize=11 -t=dna masked.SA161.mod.fasta -q=dna seq.All.candidates.fna 
-out=blast8 blast.masked.genome.vs.candidates.txt



###Draw Circular Plots using CGView Server:
To extract columns from the blast-tab file:

1.   features.gff
seqname	source	feature	start	end	score	strand	frame

Ampiciliin        .	           CDS 	       1973       2833        .           	  - 	            .
lacZ	               .            CDS	         471         614	        .	             -              .
pBR322_origin	.	         other	        1199       1818        .	            -               .

awk '{print $1"\t"".""\t""CDS""\t"$9"\t"$10"\t"".""\t""-""\t""."}' bhit  > features.gff


2.  Score file. gff
seqname	source	feature	start	end	score	strand	frame

.                    .         .        416241    415144     0.2          +         .
.                    .         .        780098    778365     0.2          +         .

awk '{print ".""\t"".""\t"".""\t"$9"\t"$10"\t""0.2""\t""-""\t""."}'  bhit > scores.gff














