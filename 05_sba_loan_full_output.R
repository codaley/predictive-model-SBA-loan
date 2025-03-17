# R-studio Output:

> setwd("/Users/ds/Desktop/LOCAL DRIVE/MSBA/207/SBA LOAN")
> train_X <- read.csv("train_X_SBA.csv")
> train_y <- read.csv("train_y_SBA.csv")
> valid_X <- read.csv("valid_X_SBA.csv")
> valid_y <- read.csv("valid_y_SBA.csv")
> 
> 
> # create training and validation sets
> train.df <- cbind(train_y, train_X)
> valid.df <- cbind(valid_y, valid_X)
> 
> set.seed (123)
> # run logistic model, and show coefficients and odds
> lm.fit <- glm(Default ~ ., data = train.df, family = "binomial")
Warning message:
glm.fit: fitted probabilities numerically 0 or 1 occurred 
> data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit)))
                      Estimate Std..Error    z.value      Pr...z..         odds
(Intercept)        -1.38615650 0.05833802 -23.760772 8.502766e-125 2.500345e-01
ChgOffPrinGr       22.97794096 0.15942988 144.125687  0.000000e+00 9.532196e+09
Term               -2.40520288 0.03688380 -65.210271  0.000000e+00 9.024718e-02
ApprovalFY          0.49898237 0.02220739  22.469199 8.307680e-112 1.647044e+00
Portion             0.34740250 0.02322065  14.960927  1.321712e-50 1.415386e+00
RealEstate          1.38098336 0.06876063  20.083927  1.020039e-89 3.978812e+00
SBA_Appv            8.59928422 0.53803098  15.982879  1.681938e-57 5.427773e+03
GrAppv            -10.66814549 0.57436328 -18.573864  5.230020e-77 2.327466e-05
DisbursementGross  -2.54708763 0.23526167 -10.826615  2.574983e-27 7.830940e-02
LowDoc             -0.25057302 0.02429435 -10.314046  6.088317e-25 7.783546e-01
RevLineCr          -0.03073116 0.01760863  -1.745233  8.094430e-02 9.697362e-01
Recession           0.18057357 0.01594912  11.321854  1.022854e-29 1.197904e+00
> 
> round(data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))), 5)
                   Estimate Std..Error   z.value Pr...z..         odds
(Intercept)        -1.38616    0.05834 -23.76077  0.00000 2.500300e-01
ChgOffPrinGr       22.97794    0.15943 144.12569  0.00000 9.532196e+09
Term               -2.40520    0.03688 -65.21027  0.00000 9.025000e-02
ApprovalFY          0.49898    0.02221  22.46920  0.00000 1.647040e+00
Portion             0.34740    0.02322  14.96093  0.00000 1.415390e+00
RealEstate          1.38098    0.06876  20.08393  0.00000 3.978810e+00
SBA_Appv            8.59928    0.53803  15.98288  0.00000 5.427773e+03
GrAppv            -10.66815    0.57436 -18.57386  0.00000 2.000000e-05
DisbursementGross  -2.54709    0.23526 -10.82662  0.00000 7.831000e-02
LowDoc             -0.25057    0.02429 -10.31405  0.00000 7.783500e-01
RevLineCr          -0.03073    0.01761  -1.74523  0.08094 9.697400e-01
Recession           0.18057    0.01595  11.32185  0.00000 1.197900e+00
> 
> 
> # run logistic model, and show coefficients and odds
> lm.fit <- glm(Default ~ ., data = train.df, family = "binomial")
Warning message:
glm.fit: fitted probabilities numerically 0 or 1 occurred 
> data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))) 
                      Estimate Std..Error    z.value      Pr...z..         odds
(Intercept)        -1.38615650 0.05833802 -23.760772 8.502766e-125 2.500345e-01
ChgOffPrinGr       22.97794096 0.15942988 144.125687  0.000000e+00 9.532196e+09
Term               -2.40520288 0.03688380 -65.210271  0.000000e+00 9.024718e-02
ApprovalFY          0.49898237 0.02220739  22.469199 8.307680e-112 1.647044e+00
Portion             0.34740250 0.02322065  14.960927  1.321712e-50 1.415386e+00
RealEstate          1.38098336 0.06876063  20.083927  1.020039e-89 3.978812e+00
SBA_Appv            8.59928422 0.53803098  15.982879  1.681938e-57 5.427773e+03
GrAppv            -10.66814549 0.57436328 -18.573864  5.230020e-77 2.327466e-05
DisbursementGross  -2.54708763 0.23526167 -10.826615  2.574983e-27 7.830940e-02
LowDoc             -0.25057302 0.02429435 -10.314046  6.088317e-25 7.783546e-01
RevLineCr          -0.03073116 0.01760863  -1.745233  8.094430e-02 9.697362e-01
Recession           0.18057357 0.01594912  11.321854  1.022854e-29 1.197904e+00
> round(data.frame(summary(lm.fit)$coefficients, odds = exp(coef(lm.fit))), 5)
                   Estimate Std..Error   z.value Pr...z..         odds
(Intercept)        -1.38616    0.05834 -23.76077  0.00000 2.500300e-01
ChgOffPrinGr       22.97794    0.15943 144.12569  0.00000 9.532196e+09
Term               -2.40520    0.03688 -65.21027  0.00000 9.025000e-02
ApprovalFY          0.49898    0.02221  22.46920  0.00000 1.647040e+00
Portion             0.34740    0.02322  14.96093  0.00000 1.415390e+00
RealEstate          1.38098    0.06876  20.08393  0.00000 3.978810e+00
SBA_Appv            8.59928    0.53803  15.98288  0.00000 5.427773e+03
GrAppv            -10.66815    0.57436 -18.57386  0.00000 2.000000e-05
DisbursementGross  -2.54709    0.23526 -10.82662  0.00000 7.831000e-02
LowDoc             -0.25057    0.02429 -10.31405  0.00000 7.783500e-01
RevLineCr          -0.03073    0.01761  -1.74523  0.08094 9.697400e-01
Recession           0.18057    0.01595  11.32185  0.00000 1.197900e+00
> y <- train.df$Default
> 
> # creating a matrix with predictors
> X <- model.matrix(Default ~ ., train.df)[, -1] #remove intercept as glmnet will add intercept
> library(glmnet)
> 
> 
> 
> 
> 
> 
> # LASSO L1
> 
> # find the best lambda using cross-validation 
> cv.lasso <- cv.glmnet(X, y, alpha = 1, family = "binomial")
> 
> # fit the final model on the training data
> lasso_model <- glmnet(X, y, alpha = 1, family = "binomial",
+                       lambda = cv.lasso$lambda.min)
> 
> # display coefficients
> coef(lasso_model)
12 x 1 sparse Matrix of class "dgCMatrix"
                           s0
(Intercept)       -1.44410134
ChgOffPrinGr      22.79639104
Term              -2.39946716
ApprovalFY         0.48922411
Portion            0.39628175
RealEstate         1.43777758
SBA_Appv           6.45510644
GrAppv            -8.67710599
DisbursementGross -2.62763578
LowDoc            -0.25128411
RevLineCr         -0.02332542
Recession          0.18085935
> 
> 
> 
> 
> 
> 
> 
> 
> # RIDGE (L2)
> X <- model.matrix(Default ~ ., train.df)[, -1]
> y <- train.df$Default
> 
> # find the best lambda using cross-validation 
> cv.ridge <- cv.glmnet(X, y, alpha = 0, family = "binomial")
> 
> # fit the final model on the training data
> ridge_model <- glmnet(X, y, alpha = 0, family = "binomial", lambda = cv.ridge$lambda.min)
> 
> # display coefficients
> coef(ridge_model)
12 x 1 sparse Matrix of class "dgCMatrix"
                           s0
(Intercept)       -2.04918536
ChgOffPrinGr       2.23663440
Term              -1.28619311
ApprovalFY         0.38662997
Portion            0.10917257
RealEstate         0.04068487
SBA_Appv          -0.29932432
GrAppv            -0.36900935
DisbursementGross -0.37326501
LowDoc            -0.14458850
RevLineCr         -0.08700662
Recession          0.17947929
> 
> 
> 
> 
> 
> 
> 
> # ELASTIC NET WITH 0 < ALPHA < 1 (L1 + L2)
> a <- seq(0.1, 0.9, 0.05)
> library(foreach)
> 
> library(parallel)
> search <- foreach(i = a, .combine = rbind) %dopar% {
+   cv <- cv.glmnet(X, y, family = "binomial", nfold = 10, type.measure = "deviance", parallel = TRUE, 
+                   alpha = i)
+   data.frame(cvm = cv$cvm[cv$lambda == cv$lambda.1se], lambda.1se = cv$lambda.1se, alpha = i)
+ }
> cv3 <- search[search$cvm == min(search$cvm), ]
> cv3
         cvm   lambda.1se alpha
16 0.1260714 4.278239e-05  0.85
> md3 <- glmnet(X, y, family = "binomial", lambda = cv3$lambda.1se, alpha = cv3$alpha)
> coef(md3)
12 x 1 sparse Matrix of class "dgCMatrix"
                          s0
(Intercept)       -1.5767233
ChgOffPrinGr      21.8204305
Term              -2.4064474
ApprovalFY         0.4835554
Portion            0.4854932
RealEstate         1.5081360
SBA_Appv           2.0213555
GrAppv            -3.6232920
DisbursementGross -3.4507426
LowDoc            -0.2468609
RevLineCr          .        
Recession          0.1933619
>