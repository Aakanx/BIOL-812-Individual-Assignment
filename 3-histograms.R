FileName = commandArgs(trailingOnly=TRUE)
# print(FileName)

x <- read.csv(FileName, header = FALSE)
# x <- read.csv(paste(FileName, ".count", sep = ""), header = FALSE) # for reading individual .count files
y <- t(t(x)/colSums(x))

library(ggplot2)
a <- qplot(y[, 1], xlab = "A")
b <- qplot(y[, 2], xlab = "G")
c <- qplot(y[, 3], xlab = "C")
d <- qplot(y[, 4], xlab = "T")

library(gridExtra)
pdf(paste("./files/histograms.pdf"))
# pdf(paste(FileName, ".pdf", sep = "")) # for giving individual file names
grid.arrange(a, b, c, d, nrow = 2)
dev.off()


# histograms <- function(FileName){
#   x <- read.csv(FileName, header = FALSE)
#   y <- t(t(x)/colSums(x)) # gives x but with each cell divided by the sum of its column
#   
#   library(ggplot2)
#   a <- qplot(y[, 1], xlab = "A")
#   b <- qplot(y[, 2], xlab = "G")
#   c <- qplot(y[, 3], xlab = "C")
#   d <- qplot(y[, 4], xlab = "T")
#   
#   library(gridExtra)
#   pdf("histograms.pdf")
#   grid.arrange(a, b, c, d, nrow = 2)
#   dev.off()
# }
# histograms("./test.count")

# x <- matrix(sample(24, 24, replace = TRUE), ncol = 4)
# y <- x/colSums(x) # all cells of row i divided by sum of column i, but needed all cells of column i divided by sum of column i, as done above  

