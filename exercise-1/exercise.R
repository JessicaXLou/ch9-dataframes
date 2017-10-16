### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win
hawks.scores <- c(9, 12, 27, 46, 16)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
opponent.scores <- c(17, 9, 33, 18, 10)

# Combine your two vectors into a dataframe
game.scores <- data.frame(hawks.scores, opponent.scores)

# Create a new column "diff" that is the difference in points
game.scores$diff <- game.scores$hawks.scores - game.scores$opponent.scores

# Create a new column "won" which is TRUE if the Seahawks won
game.scores$won <- game.scores$diff > 0

# Create a vector of the opponents
opponents <- c("Green Bay", "San Francisco", "Tennessee", "Indianapolis", "LA Rams")

# Add the vector of opponents into the data frame
rownames(game.scores) <- opponents