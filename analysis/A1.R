

# Set working directory to source file location
install.packages("rstudioapi")
library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))
getwd()

# Import data
data.df <- read.csv(file = "A1-2.csv", header = TRUE, stringsAsFactors = FALSE)
data.df

# Linear regression 
lm.data.df = lm(maturity ~ harvested, data = data.df)
summary(lm.data.df)
plot(lm.data.df$residuals, pch = 16, col = "black")
plot(data.df)
