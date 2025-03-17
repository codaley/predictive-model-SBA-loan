# ELASTIC NET WITH 0 < ALPHA < 1 (L1 + L2)
a <- seq(0.1, 0.9, 0.05)
library(foreach)

library(parallel)
search <- foreach(i = a, .combine = rbind) %dopar% {
  cv <- cv.glmnet(X, y, family = "binomial", nfold = 10, type.measure = "deviance", parallel = TRUE, 
                  alpha = i)
  data.frame(cvm = cv$cvm[cv$lambda == cv$lambda.1se], lambda.1se = cv$lambda.1se, alpha = i)
}
cv3 <- search[search$cvm == min(search$cvm), ]
cv3
md3 <- glmnet(X, y, family = "binomial", lambda = cv3$lambda.1se, alpha = cv3$alpha)
coef(md3)