# R crash course 2024


# general -----------------------------------------------------------------

# RStudio has
# - Console
# - environment
# - help
# - scripts

# comments
# - Code after "#" will not be executed

# keys
# - "ctrl + enter": execute marked code or current line
# - "escape": stop current code input 

# calculator --------------------------------------------------------------


### R can do calculations

# sums
2 + 3

# differences
3 - 1

# etc
2 * 3
3 / 2
3^2



# variables, strings, and vectors ---------------------------------------------------------------

# R uses variables
a <- 2
b <- 3 # (see the environment panel)

# ...which can be used for operations
a + b

# can contain strings/character values
str <- "hello, world!"
str


# can also store vectors
vec <- c(2,3,5)
vec

# and access specific entries
vec[1]
vec[c(2,3)]

# restart R to start with a fresh environment without any of the old variables


# EXERCISE: Create a vector with the two entries 10 and 100. 
# Then access the second entry.
a <- c(___)
a[_]


# functions ---------------------------------------------------------------
# functions are used to simplify code

a <- 1:5
a

# average of a?
(a[1]+a[2]+a[3]+a[4]+a[5])/5

# or (quicker) use mean function
mean(a)


# can also write own functions
foo <- function(x){
  average <- sum(x)/length(x) 
  return(average)
}

# and use them
foo(a)



# help --------------------------------------------------------------------

# R has an excellent help feature for commands
?sum

# more complicated and comprehensive topics through
# google: R how to ? (add stack-exchange or [R] or "in R" or "code")
# llms (gemini, chatgpt, etc) are also excellent learning resources and helpers

### EXERCISE: Compute the sum of the vector vec
vec <- c(1,5,4,1)
# ?                  


# for loops -------------------------------------------------------------------
# loops are a simple way to repeat code

# print first ten equal numbers?
for(i in 1:10){
  print(2*i)
}

### EXERCISE: Change code to print first five numbers that can be divided by 3
for(i in 1:10){
  print(2*i)
}  


# data --------------------------------------------------------------------

# save data in df
df <- ChickWeight

# peak at data
head(df)

# check dimensions
dim(df)

# summary of each column
summary(df)

#access one column/variable
df$weight


# packages ----------------------------------------------------------------
# functions (and data) that can be installed and used
# often very powerful (sometimes complicated)
# come with manual and help

# install.packages (only once on every machine)
install.packages("ggplot2")

# load packages (each time you restart)
library(ggplot2)

# use command ggplot for scatterplot
ggplot(data = df, aes(x=Time,y=weight)) +
  geom_point()

# add color for the diet
ggplot(df, aes(x=Time,y=weight,col=Diet)) +
  geom_point()

# add facets for the dieat
ggplot(df, aes(x=Time,y=weight,col=Diet)) +
  geom_point() +
  facet_wrap(vars(Diet))

# plot average in each diet
ggplot(df, aes(x=Time,y=weight,col=Diet)) +
  stat_summary(fun="mean", geom="line")



# regression --------------------------------------------------------------

# estimate OLS
res <- lm(weight ~ Diet, data = df)

# show results
summary(res)

# control for time
summary(lm(weight ~ Diet + Time , data = df))

# add interaction
summary(lm(weight ~ Diet * Time , data = df))


# other important topics --------------------------------------------------

# - dynamic documents (next time with Professor Kleiber)
# - load data
# - types: factors, arrays, and lists
# - missing values ("NA")
# - Rprojects
# - not so important: your own R-packages
# - not so important: search paths
# - not so important: environments


# debugging ---------------------------------------------------------------
# how to correct wrong code
# again: Google and llms are often very helpful

# EXERCISE: Correct

# wrong name
myvariable <- 2
myVariable*2

# unfinished commands
is_this_finished <- "not really


# How to multiply? 
a <- 2
2a + 1




