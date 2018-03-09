##Figure: Fig S1

# Boxplots of the genomics fraction of recombinogenic bacteria:

B<-read.table('No.exchanged.genes.Recombi.csv', header=T, sep=",")
Bdata <- as.data.frame(B)


# Nocth style:
## define the colors of the boxplots:
fill <- "#4271AE"
line <- "#1F3552"

pdf(file="No.of.exchanged.genes.pdf")

ggplot(Bdata, aes(factor(species), genes)) + geom_boxplot(colour = lines, fill = fill, notch = TRUE) + 
  theme_classic() + xlab("") + ylab("No. of exchanged genes") +
  theme(panel.border = element_blank(), panel.background = element_blank(),
      plot.title = element_text(size = 14, family = "Tahoma", face = "bold"),
      text=element_text(family="Tahoma"),
      axis.text.x=element_text(colour="black", size = 10.5),
      axis.text.y=element_text(colour="black", size = 12)) + stat_summary(fun.y = mean, geom="point",colour="darkred", size=3) 

dev.off()


