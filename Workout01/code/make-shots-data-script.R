#' @title Data Preparation
#' @description ****
#' @param 
#' @return 
#' 
#' 
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/gramond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)

curry$name <- "curry"
green$name <- "green"
durant$name <- "durant"
thompson$name <- "thompson"
iguodala$name <- "iguodala"