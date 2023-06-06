#### ab_data set ####
data1 <- ab_data_2_
summary(data1)

# Define the observed data
user_id <- data1$user_id
timestamp <- data1$timestamp
group <- data1$group
landing_page <- data1$landing_page
converted <- data1$converted

table(data1$group)
#frequencies of the variables
install.packages("dplyr")
library(dplyr)
##frequency of landing page
as.data.frame(table(data1$landing_page)) %>%
  arrange(desc(Freq))
## frequency of timestamp -> all show up 3 times
as.data.frame(table(data1$timestamp)) %>%
  arrange(desc(Freq))

## categorizing timestamp to hour and days
install.packages("lubridate")
library(lubridate)
timestamps <-data1$timestamp
timestamps <- as.POSIXct(timestamps, format = "%Y-%m-%d %H:%M:%S")
day <- as.Date(timestamps)
time <- format(timestamps, format = "%H")
data <- data.frame(timestamps, day, time)
print(data)

## frequency of days
as.data.frame(table(day)) %>%
  arrange(desc(Freq))

## frequency of hours
as.data.frame(table(time)) %>%
  arrange(desc(Freq))

## frequency of users
users <- data1$user_id
as.data.frame(table(users)) %>%
  arrange(desc(Freq))

# hist on landing page
library(ggplot2)
page <- data1$landing_page
ggplot(data.frame(page), aes(x=page)) +
  geom_bar()

#hist on converted
library(ggplot2)
converted <- data1$converted
ggplot(data.frame(converted), aes(x=converted)) +
  geom_bar()

#Task 1: 

# Compute summary statistics - mean conversion rate for each landing page
conversion_rate_summary <- aggregate(converted, by = list(landing_page), FUN = mean)
colnames(conversion_rate_summary) <- c("Landing Page", "Conversion Rate")
print(conversion_rate_summary)

#bar plot of conversion rate
library(ggplot2)
conversion_rate_plot <- ggplot(data = data1, aes(x = landing_page, y = converted)) +
  geom_bar(stat = "identity", fill = "darkcyan", width = 0.5) +
  labs(x = "Landing Page", y = "Conversion Rate", title = "Conversion Rates by Landing Page") +
  theme_minimal()
print(conversion_rate_plot)


# time series plot on data? aggrgate time into smaller categories  (weeks?)


#Task 2:

# Set the seed for reproducibility
set.seed(123)

# Compute the conversion rates for the old and new landing pages
old_conversion_rate <- sum(converted[landing_page == "old_page"]) / sum(landing_page == "old_page")
new_conversion_rate <- sum(converted[landing_page == "new_page"]) / sum(landing_page == "new_page")

# Define the prior distribution parameters
prior_alpha <- 2
prior_beta <- 20

# Compute the posterior distributions
old_posterior <- rbeta(10000, sum(converted[landing_page == "old_page"]) + prior_alpha, 
                       sum(landing_page == "old_page") - sum(converted[landing_page == "old_page"]) + prior_beta)
new_posterior <- rbeta(10000, sum(converted[landing_page == "new_page"]) + prior_alpha, 
                       sum(landing_page == "new_page") - sum(converted[landing_page == "new_page"]) + prior_beta)

# Summarize the posterior distributions
old_summary <- summary(old_posterior)
new_summary <- summary(new_posterior)

# Print the summary statistics
print(old_summary)
print(new_summary)

hist(old_posterior)
hist(new_posterior)