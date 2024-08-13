x <- c(2.1, 4.2, 3.3, 5.4)

#can use concatonate to call multiple values at once
x[c(3,1)]

#calls all values
x[order(x)]


x[c(1,1)]

# r truncates decimals to integers
x[c(2.1,2.9)]

#everything minus the value
x[-1]
x[-2]
x[-c(3,1)]
#this doesn't work
x[c(-1,2)]

#outputs where entry is true
x[c(TRUE, TRUE, FALSE, FALSE)]

#same but splits x in true and assumes both 1st and second are true
x[c(TRUE, FALSE)]

#same as first but spits out NA in third
x[c(TRUE, TRUE, NA, FALSE)]

#spits out everything
x[]

#spits out "numeric(0)
x[0]


#x = list of 1 to 5
x <- 1:5
x

#changes x[1] and x[2] to 2
x[c(1,2)] <- 2
x

#edits last 4 entries to be list from 4 to 1, but 2 at beginning is still there
x[-1] <- 4:1
x

#initializes df with parameter a and values 1, 10, and NA
df <- data.frame(a = c(1,10,NA))
df

# changes all values of a less than 5 to 0
df$a[df$a < 5] <- 0
df

# fetches all cars with gear 5
mtcars[mtcars$gear == 5, ]

#fetches all cars with gear 5 and cyl 4
mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

# can use subset() to do the same thing
subset(mtcars, gear == 5)
subset(mtcars, gear == 5 & cyl == 4)

#lets make a plot with the cars using subset()
library(tidyverse)
ggplot(subset(mtcars, gear == 5 & cyl == 4), aes(x = mpg, y = disp)) + geom_point()

#declares data frame
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
# makes all values in parameter z null, effectively deleting them
df$z <- NULL
df

#resetting the dataframe
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
#returns just parameters x and y
df[c("x", "y")]

#resetting the dataframe
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
# just removes column z
# names() in this case fetches name of all columns
# setdiff() compares first and second params and removes second that is the same as the first from the data frame
df <- df[setdiff(names(df), "z")]
df
