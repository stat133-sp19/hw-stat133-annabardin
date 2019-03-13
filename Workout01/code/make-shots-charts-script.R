library(ggplot)
library(ggplot2)
library(grid)
library(jpeg)
court_file <- "../images/nba-court.jpg"
# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))


andre_iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

klay_thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

kevin_durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

draymond_green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

stephen_curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

ggsave("andre_iguodala_shot_chart", plot= andre_iguodala_shot_chart, device = "pdf", path = '../images', width = 6.5,height =5, units ="in")
ggsave("draymond_green_shot_chart", plot= draymond_green_shot_chart, device = "pdf", path = '../images', width = 6.5,height =5, units ="in")
ggsave("kevin_durant_shot_chart", plot= kevin_durant_shot_chart, device = "pdf", path = '../images', width = 6.5,height =5, units ="in")
ggsave("klay_thompson_shot_chart", plot= klay_thompson_shot_chart, device = "pdf", path = '../images', width = 6.5,height =5, units ="in")
ggsave("stephen_curry_shot_chart", plot= stephen_curry_shot_chart, device = "pdf", path = '../images', width = 6.5,height =5, units ="in")

rbound <- cbind(iguodala,green,durant,thompson,curry)
gsw_shot_charts <- ggplot(data = rbound)+
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: (2016 season)') +
  theme_minimal() + facet_wrap(. ~ name)

ggsave("gsw_shot_charts", plot= gsw_shot_charts, device = "png", path = '../images', width = 8,height =7, units ="in")
ggsave("gsw_shot_charts", plot= gsw_shot_charts, device = "pdf", path = '../images', width = 8,height =7, units ="in")

shots_data <- read.csv("../data/shots-data.csv", stringsAsFactors = FALSE)

