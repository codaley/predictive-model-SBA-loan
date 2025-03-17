# LASSO L1

# find the best lambda using cross-validation 
cv.lasso <- cv.glmnet(X, y, alpha = 1, family = "binomial")

# fit the final model on the training data
lasso_model <- glmnet(X, y, alpha = 1, family = "binomial",
                lambda = cv.lasso$lambda.min)

# display coefficients
coef(lasso_model)