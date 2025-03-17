setwd("/Users/ds/Desktop/LOCAL DRIVE/MSBA/207/SBA LOAN")
train_X <- read.csv("train_X_SBA.csv")
train_y <- read.csv("train_y_SBA.csv")
valid_X <- read.csv("valid_X_SBA.csv")
valid_y <- read.csv("valid_y_SBA.csv")


# create training and validation sets
train.df <- cbind(train_y, train_X)
valid.df <- cbind(valid_y, valid_X)

set.seed (123)
# run logistic model, and show coefficients and odds
lm.fit <- glm(Default ~ ., data = train.df, family = "binomial")
data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit)))

round(data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))), 5)


# run logistic model, and show coefficients and odds
lm.fit <- glm(Default ~ ., data = train.df, family = "binomial")
data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))) 
round(data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))), 5)
y <- train.df$Default

# creating a matrix with predictors
X <- model.matrix(Default ~ ., train.df)[, -1] #remove intercept as glmnet will add intercept
library(glmnet)