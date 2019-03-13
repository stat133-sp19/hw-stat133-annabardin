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

curry$shot_made_flag[curry$shot_made_flag == "y"] -> "shot_yes"
curry$shot_made_flag[curry$shot_made_flag == "n"] -> "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] -> "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] -> "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] -> "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] -> "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] -> "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] -> "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] -> "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] -> "shot_no"

curry$minute <- curry$period*12 - curry$minutes_remaining
green$minute <- green$period*12 - green$minutes_remaining
durant$minute <- durant$period*12 - durant$minutes_remaining
thompson$minute <- thompson$period*12 - thompson$minutes_remaining
iguodala$minute <- iguodala$period*12 - iguodala$minutes_remaining

sink(file = '../output/stephen-curry-summary.txt')
summary(curry)
sink()
sink(file = '../output/raymond-green-summary.txt')
summary(green)
sink()
sink(file = '../output/kevin-durant-summary.txt')
summary(durant)
sink()
sink(file = '../output/klay-thompson-summary.txt')
summary(thompson)
sink()
sink(file = '../output/andre-iguodala-summary.txt')
summary(iguodala)
sink()

shots_data <- rbind(iguodala, green, durant, thompson, curry)
sink(file = '../output/shots-data-summary.csv')
summary(rbind(curry,green,durant,thompson,iguodala))
sink()


write.csv(file = '../data/shots-data.csv',
x = shots_data, row.names = FALSE)
