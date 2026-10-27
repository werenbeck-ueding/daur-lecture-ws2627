#___________________________________________________________________________####
# Lecture 1: Basics of Functions in R                                       ####

# Create a data frame with 50 observations and 3 normal distributed variables 
# with mean 5 and standard deviation 10
df <- data.frame(x = rnorm(50, 5, 10),
                 y = rnorm(50, 5, 10),
                 z = rnorm(50, 5, 10))

# Define the standardization logic
standardize <- function(x, ...) {
  if (!is.numeric(x)) {
    stop("x has to be numerical")
  }
  
  mean_x <- mean(x, ...)
  sd_x <- sd(x, ...)
  
  (x - mean_x) / sd_x
}


# Option 1: Applying the function with copy-and-paste code

# Instantiate a new data frame with suffix 1 for option 1
df_1 <- df
df_1$x <- standardize(df$x)
df_1$y <- standardize(df$y)
df_1$z <- standardize(df$z)


# Option 2: Applying the function inside a for-loop

df_2 <- df

# Loop over all columns and reassign those columns as standardized columns
for (i in 1:ncol(df)) {
  df[,i] <- standardize(df[,i])
}


# Option 3: Applying the function using apply()

df_3 <- apply(
  X = df, # The data argument
  MARGIN = 2, # apply standardize() over columns not rows
  FUN = standardize
)
