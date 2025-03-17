# RIDGE (L2)
X <- model.matrix(Default ~ ., train.df)[, -1]
y <- train.df$Default

# find the best lambda using cross-validation 
cv.ridge <- cv.glmnet(X, y, alpha = 0, family = "binomial")

# fit the final model on the training data
ridge_model <- glmnet(X, y, alpha = 0, family = "binomial", lambda = cv.ridge$lambda.min)

# display coefficients
coef(ridge_model)