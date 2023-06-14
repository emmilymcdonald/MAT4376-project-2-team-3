#### ab_data set ####
data1 <- ab_data_v2
summary(data1)
str(data1)

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


##duplicates of users
library(tidyverse)
duplicated(data1$user_id)
unique(data1$user_id)
a <- sum(unique(data1$user_id))

b <- sum(duplicated(data1$user_id))

b/a

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




# Calculate the conversion rate for the old page
conversion_rate_old <- sum(data1$converted[data1$landing_encoded == 0]) / sum(data1$landing_encoded == 0)

# Calculate the conversion rate for the new page
conversion_rate_new <- sum(data1$converted[data1$landing_encoded == 1]) / sum(data1$landing_encoded == 1)

# Print the conversion rates
cat("Conversion rate for the old page:", conversion_rate_old, "\n")
cat("Conversion rate for the new page:", conversion_rate_new, "\n")


# Task 2 - Super Kaka

library(tidyverse)
library(bayesAB)

# Number of random draws from the prior
n_draws <- 290584

prior <- runif(n_draws,0,1) # Here you sample n_draws draws from the prior  
hist(prior) # It's always good to eyeball the prior to make sure it looks ok.


# Here you define the generative model
generative_model <- function(rate) {
  subs=rbinom(1,size=10,prob=rate)
  subs
}

# Here you simulate data using the parameters from the prior and the 
# generative model
subs <- rep(NA, n_draws)
for(i in 1:n_draws) {
  subs[i] <- generative_model(prior[i])
  
}

# Here you filter off all draws that do not match the data.
posterior <- prior[subs == 1] 

hist(posterior) # Eyeball the posterior


## Task 2 
n_draw <- 10000

# Defining and drawing from the prior distribution
prior_rate <- runif(n_draw, 0, 1)

# Defining the generative model
gen_model <- function(rate) {
  subscribers <- rbinom(1, size = 16, prob = rate)
  subscribers
}

# Simulating the data
subscribers <- rep(NA, n_draw)
for(i in 1:n_draw) {
  subscribers[i] <- gen_model(prior_rate[i])
}

# Filtering out those parameter values that didn't result in the
# data that we actually observed
post_rate <- prior_rate[subscribers == 6]
data_list <- list(n = 16, s = 6)

#### 
install.packages("rstan")
library(rstan)

# The Stan model as a string.
model_string <- '
data {
  # Number of trials
  int 145264;
  int 145232;
  # Number of successes
  int 17256;
  int 17274; }

parameters {
  real<lower=0, upper=1> rateA;
  real<lower=0, upper=1> rateB;
}

model {
  rateA ~ uniform(0, 1);
  rateB ~ uniform(0, 1);
  sA ~ binomial(nA, rateA);
  sB ~ binomial(nB, rateB); 
}

generated quantities {
  real rate_diff;
  rate_diff = rateB - rateA;
}'


data_list <- list(nA = 16, nB = 16, sA = 6, sB = 10)

# Compiling and producing posterior samples from the model.
stan_samples <- stan(model_code = model_string, data = data_list)

# Bayes test

library(bayesAB)

A_binom <- rbinom(145232, 1, .1203946)
B_binom <- rbinom(145352, 1, .1187448)
AB1 <- bayesTest(A_binom, B_binom, priors = c('alpha' = 2, 'beta' = 20), distribution = 'bernoulli')
print(AB1)
summary(AB1)
plot(AB1)
