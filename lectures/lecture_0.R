#___________________________________________________________________________####
# Lecture 0: Understanding R Basics                                         ####

# Install the rio package via CRAN
# install.packages("rio")

library(rio)


##__________________________________________________________________________####
## Part 1: Variables & Their Assignment                                     ####

# Assigning objects to a name so that they show up in the current R session's
# environment
x <- 9
y <- 4

z <- x / y

# Do NOT use `=` for assignment as that is considered bad practice (although it
# works)
u = 8

# You could also assign in a different direction (but please don't)
6 -> s

# Overwrite x
x <- 8

# Creating a vector
a <- c(4, 5, 6)

# Check the type of an object
typeof(a)

# Create a logical vector
l <- c(TRUE, FALSE, F, T) # T and F are abbreviations

# Create a factor variable
fct <- factor(c("Female", "Female", "Female", "Male", "Male", "Diverse"))

# Check the attributes (or "metainformation") of the factor
attributes(fct)

# Add a value at position 7
fct[7] <- "Diverse"

# Add a value not predefined by the levels at position 8
fct[8] <- "Not diverse"

# Beware of missings in your data!
c(8, NA, 5) * c(7, 4, 3)


##__________________________________________________________________________####
## Part 2: Mathematical Operations                                          ####

# Divide 9 by 3; 9 and 3 are objects, and the divide is a function call
9 / 3 # This is an in-line comment

# Multiply two vectors
a * c(9, 8, 7)

# Multiply a logical with a numerical
a * c(TRUE, FALSE, TRUE)

# The logical is internally converted to a numeric
as.numeric(c(TRUE, FALSE, TRUE))

# Does not work with characters
a * c("1", "0", "1")

# Check equivalence
a == 5
a == c(4, 5, 6)

# Similarly check greater / smaller with > / < and greater equal / smaller equal
# with >= / <=; not equal is !=


# Creating a matrix
A <- matrix(1:16, nrow = 2)


##__________________________________________________________________________####
##  Part 3: Subsetting                                                      ####

# Subsetting using the index of an element
a[c(1, 2)]

# Subsetting based on condition
a[a > 4 & a <= 6]

# Subsetting a matrix
A[2, c(T, F, F, T)]


##__________________________________________________________________________####
##  Part 4: Lists                                                           ####

my_list <- list(
  integer = 1L:5L, 
  character = "a", 
  logical = c(TRUE, FALSE), 
  double = seq(0.2, 0.6, by = 0.2)
)

my_list$logical

my_data_set <- data.frame(
  gender = c("Female", "Male", "Diverse", "Female", "Male"),
  age = c(76, 23, 54, 36, 61),
  income = c(0, 1000, 1000, 2000, 3000)
)


