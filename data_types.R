dogs <- c("teddy", "khora", "waffel", "banjo")

#typeof and class are different functions for giving data type
#sometimes with different results

#typeof is more specific than class
#class tends to focus more on structure of data
# such as is it a matrix or list

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)

typeof(weights)
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)

is.numeric(dog_age)

dog_info <- c("teddy", 50, 5L)

#because we combined both numerics and characters in a list, it defaulted the numerics to characters
dog_info
typeof(dog_info)
class(dog_info)
is.character(dog_info)

dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")

#calls entries in a list
dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
#calls sequence of entries in a list
cars[2:4]

#u already know
i <- 3
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "aaaaaaAAAAAAAAA"
cars

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)

# r forces all of these to be the same data type
# in this case, character because that's the broadest type in the matrix
dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)

class(dog_walk)
typeof(dog_walk)

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel

#just fetches the last number entered
whale_travel[1,2]

#to get a single row of matrix
whale_travel[1,]

#to get a single column
whale_travel[,2]

#to get a single number
whale_travel[1]

whale_travel

#u can use lists to store combinations of different typed data, but preserve the types
urchins <- list("blue", c(1,2,3), c("a cat", "a dog"), 5L)

#output = "list"
typeof(urchins)
class(urchins)

#both ways of fetching data in list
#second one gets more down to detail, and doesn't include the number in the output
urchins[1]
urchins[[1]]


tacos <- list(toppings = c("onion", "cilantro", "guacamole"), fillings = c("beans", "meat", "veggies"))
tacos

#both of these are ways of fetching fillings in this case
tacos[[2]]
tacos$fillings

# to get a specific entry in fillings
tacos$fillings[1]

#r requires both vectors in a data frame to be the same length because dfs are essentially a table
fruit <- data.frame(type = c("apple", "banana", "peach"),
           mass = c(130, 195, 250))
fruit

typeof(fruit)
class(fruit)

#this one accesses entry in row 3 column 1
fruit[3,1]
#this one accesses entry, in row 2 column, and changes it to pineapple
fruit[2,1] <- "pineapple"

fruit
