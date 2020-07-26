mtcars1<-mtcars
counts<-table(mtcars1$gear)
barplot(counts)
barplot(counts,horiz = TRUE)


barplot(counts,
        main ="Simple Bar Plot",
        xlab = "Improvement",
        ylab ="Frequency",
        legend = rownames(counts),
        col=c("red","yellow","green")
)

counts <- table (mtcars$vs,mtcars$gear)
barplot(counts,
        main ="car dis by gears and vs",
        xlab = "no of gears",
        ylab ="Frequency",
        legend = rownames(counts),
        col=c("grey","green")
)

#grouped bar chart
counts <- table (mtcars$vs,mtcars$gear)
barplot(counts,
        main ="car dis by gears and vs",
        xlab = "no of gears",
        ylab ="Frequency",
        legend = rownames(counts),
        beside = TRUE,
        col=c("grey","green")
)


#PIE CHARTS

Slices<- c(10,12,4,16,8)
lbls <- c("us","uk","aus","germany","france")
pie(Slices,labels=lbls,main="simple pie chart")

# Pie Chart with Percentages
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")

# 3D Exploded Pie Chart
install.packages("plotrix")
library(plotrix)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie3D(slices,labels=lbls,explode=0.1,
      main="Pie Chart of Countries ")

