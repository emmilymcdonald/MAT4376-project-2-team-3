#### mimic 3d set ####

data2 <- mimic3d_2_
summary(data2)

hist(data2$age)
admit <- data2$admit_type

# hist on admission type -> most frequent is emergency
library(ggplot2)
ggplot(data.frame(admit), aes(x=admit)) +
  geom_bar()

# hist on marital status
library(ggplot2)
marry <- data2$marital_status
ggplot(data.frame(marry), aes(x=marry)) +
  geom_bar()

#hist on religion
library(ggplot2)
religion <- data2$religion
ggplot(data.frame(religion), aes(x=religion)) +
  geom_bar()

#hist on gender
library(ggplot2)
sex <- data2$gender
ggplot(data.frame(sex), aes(x=sex)) +
  geom_bar()

#age sorted
age <-data2$age
library(dplyr)
age_sort <- aggregate(age ~ data2$age, data = data2, mean)
age_sort <- age_sort[order(age_sort$poll_weight, decreasing = FALSE), ]
knitr::kable(age_sort, caption = "Pollster Weights Sorted Table")

