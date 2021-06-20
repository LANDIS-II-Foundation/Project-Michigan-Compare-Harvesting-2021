# Library
library(ggplot2)
library(hrbrthemes)
library(reshape2)

library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))
getwd()

# Create dummy data
data.df <- read.csv(file = "A3_R3b.csv", header = TRUE, stringsAsFactors = FALSE)
data.df

# linear trend + confidence interval
p <- ggplot(data.df, aes(x=harvested, y=maturity)) +
  geom_point() +
  geom_smooth(method=lm , color="black", se=TRUE) +
  xlim(0, 8.6) +
  ylim(53, 84) +
  theme(
    plot.title = element_text(family="Times New Roman", size=20),
    axis.text.y = element_blank(),
    axis.text.x = element_text(family="Times New Roman", size=20),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    legend.position = "none") +
  annotate("text",
         x=4,
         y=81,
         label= "A3~R3:~italic(r)^2== 0.82",
         parse = TRUE,
         family="Times New Roman",
         size=7)
plot(p)
