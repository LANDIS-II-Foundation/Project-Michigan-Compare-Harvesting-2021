# Author: Garry Sotnik

# Install relevant package
# install.packages("rstudioapi")

# Call relevant library
library(rstudioapi)

# Set working directory to source file location
setwd(dirname(getActiveDocumentContext()$path))
getwd()

# Import data
data.df <- read.csv(file = "test.csv", header = TRUE, stringsAsFactors = FALSE)
data.df

# Linear regression 
lm.data.df = lm(maturity ~ harvested, data = data.df)
summary(lm.data.df)