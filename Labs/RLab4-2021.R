# LAB 4: Playing with Probability (and some basic programming)

#### LOAD DATA ####
install.packages("moderndive")
library(moderndive)

# Loading data
data("house_prices")
?house_prices

#### DATA CLEANING ####
hist(house_prices$bedrooms)
table(house_prices$bedrooms)

# Is there something wrong here?
which(house_prices$bedrooms == 33)
house_prices[which(house_prices$bedrooms == 33), ]

# fixing a mistake
house_prices$bedrooms[which(house_prices$bedrooms == 33)] <- 3

#### EMPIRICAL PROBABILITY ####
hist(house_prices$bedrooms)
table(house_prices$bedrooms)

# How would we calculate the empirical probability that a house sold between May 2014-2015 has 3 bedrooms?
sum(house_prices$bedrooms == 3)
mean(house_prices$bedrooms == 3)

# How does this compare to the theoretical probability that a house in King County has 3 bedrooms?

# HINT: Try the following line:
sum(house_prices$bedrooms == 3)



table(house_prices$bedrooms, house_prices$bathrooms)

# First argument will be rows, second will be columns
house_prices$bathrooms <- round(house_prices$bathrooms)
table(house_prices$bedrooms, house_prices$bathrooms)

# EXERCISE 1: How would we calculate the empirical probability that a house sold between May 2014-2015 has 3 bedrooms and 3 bathrooms?
# HINT: Try the following line:
sum(house_prices$bedrooms == 3 & house_prices$bathrooms == 3)
mean(house_prices$bedrooms == 3 & house_prices$bathrooms == 3)

# EXERCISE 2: How would we calculate the empirical conditional probability that a house sold between May 2014-2015 
# has 3 bathrooms GIVEN that it has 3 bedrooms?


#### SAMPLING ####

# Let X be the number of bedrooms in a house RANDOMLY DRAWN from our house_prices data

# The sample function lets us draw a random value from a vector. The size = 1 tells R we want to sample 1 house.
X <- sample(house_prices$bedrooms, size = 1)
print(X)

# What do you think the code below does?
die_roll <- sample(1:6, size = 1)
die_roll

# What do you think the code below does?
die_roll_vector <- sample(1:6, size = 6, replace = F)
die_roll_vector

# What do you think the code below does?
die_roll_vector <- sample(1:6, size = 6, replace = T)
die_roll_vector

# What do you think the code below does?
X_vector <- sample(house_prices$bedrooms, size = 10, replace = T)
X_vector

# What is the expected value of X?
E_X <- mean(house_prices$bedrooms)
E_X
Var_X <- var(house_prices$bedrooms)
Var_X

# Let's test using simulation
X_vector <- sample(house_prices$bedrooms, size = 10000, replace = T)
print(paste("E(X) =", E_X))
print(paste("Sample mean =", mean(X_vector)))
print(paste("Var(X) =", Var_X))
print(paste("Sample variance =", var(X_vector)))

# EXERCISE 3: How would you calculate the expected value of Y = number of bathrooms in a house RANDOMLY DRAWN from our house_prices data?

#### SAMPLING ####

# The runif function randomly draws a number from (0,1) (other intervals are possible too)
# n = 1 tells R we just want 1 sample

# Before we draw our sample, what is the probability that Z < .3?
Z <- runif(n = 1)

# What do you think the code below does?
Z_vector <- runif(n = 1000)

# What do you think the code below does?
mean(Z_vector < .3)

#### IF/ELSE ####
COIN <- sample(c("H", "T"), 1)
if (COIN == "H") {
  die_roll <- sample(c(1:6), 1)
} else {
  die_roll <- sample(c(1:4), 1)
}
# suppose we look at die_roll without looking at COIN... 
die_roll

# CHALLENGE: What is P(COIN == "H" | die_roll)?

#### FOR LOOPS ####
rolls <- c()
for (i in 1:1000) {
  COIN <- sample(c("H", "T"), 1)
  if (COIN == "H") {
    die_roll <- sample(c(1:6), 1)
  } else {
    die_roll <- sample(c(1:4), 1)
  }
  print(di)
  rolls[i] <- die_roll
}
hist(rolls)
