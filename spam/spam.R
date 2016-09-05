library(kernlab)
data(spam)

# splitting the data 
set.seed(3435)
trainIndicator = rbinom(4601, size = 1, prob = 0.5)
table(trainIndicator)
