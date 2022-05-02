args = commandArgs(trailingOnly = TRUE)
FileName = args[1]

histograms <- function(FileName){
  x <- read.csv(FileName, header = FALSE)
  # x <- read.csv(paste(FileName, ".count", sep = ""), header = FALSE) # for reading individual .count files
  y <- t(t(x)/colSums(x)) # gives x but with each cell divided by the sum of its column
  # y <- x/colSums(x) # all cells of row i divided by sum of column i, but needed all cells of column i divided by sum of column i, as done above

  library(ggplot2)
  a <- qplot(y[, 1], xlab = "A") # generate histogram of 1st column of y, showing distribution of As
  b <- qplot(y[, 2], xlab = "G") # generate histogram of 2nd column of y, showing distribution of Gs
  c <- qplot(y[, 3], xlab = "C") # generate histogram of 3rd column of y, showing distribution of Cs
  d <- qplot(y[, 4], xlab = "T") # generate histogram of 4th column of y, showing distribution of Ts

  library(gridExtra)
  pdf(paste("./files/histograms.pdf")) # open pdf in which the following plot output will be sent
  grid.arrange(a, b, c, d, nrow = 2) # arranging the four previously generated plots in a 2 x 2 grid
  dev.off() # close pdf
}

histograms(FileName)
