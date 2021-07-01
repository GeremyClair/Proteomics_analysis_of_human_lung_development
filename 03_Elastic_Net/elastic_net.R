#' Age Predictions Based on Proteomic Signatures
#' 
#' @param train_data a n x p data.frame with n samples and p proteins as the rows and columns, respectively
#' @param val_data a m x p optional data.frame with m samples and the same p proteins in 'train_data'. 
#' @param log_age a vector of length n, in the same sample order as train_data, with the log transformed ages
#' @param alpha elastic net mixing parameter
#' @param nfolds number of cross validation folds
#' @param incr increment to generate sequence of lambdas. Defaults to 0.01
#' 
#' @details Data must not contain any missing values.
#' 
#' @return A list of predicted values based on fitted model. Must have the glmnet package installed.
#' 

elastic_net <- function(train_data, val_data = NULL, log_age, alpha, nfolds, incr = 0.01){
  
# load library #
library(glmnet)
  
# model to get lambda vector #
mod0 = cv.glmnet(train_data, y = log_age, nfolds = nfolds, alpha = alpha)

# generate vector of lambda values #
lam_vec = seq(from = mod0$lambda.1se, to = mod0$lambda.min, by = (-1)*incr)

# fit elastic net #
enet_mod = cv.glmnet(train_data, y = log_age, nfolds = nfolds, alpha = alpha, lambda = lam_vec)

if(is.null(val_data)){
list(fitted = predict(enet_mod, newx = train_data, s = "lambda.min"))
}else{
list(fitted = predict(enet_mod, newx = train_data, s = "lambda.min"), predicted = predict(enet, newx = val_data, s = "lambda.min"))  
}  
}
