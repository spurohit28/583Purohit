x = matrix(runif(1e5*500), ncol = 500)


Rprof()
# SHREYA PUROHIT
# BZAN583 - HW 2
# COIN FLIP AND FINDIND A PROBABILITY TO GET HEADS OUT OF 100000 FLIPS.



# LONGER WAY
# basically this creates a function of probability of 50% chance of getting heads or tails
set.seed(583)
coin_flip <- function() {
  if (runif(1) < 0.5) {
    return("Heads")
  } else {
    return("Tails")
  }
}

system.time({
  num_flips <- 100000
  num_heads <- sum(replicate(num_flips, coin_flip() == "Heads"))
  
  probability_heads <- num_heads / num_flips
})
probability_heads



# OPTIMIZED WAY

set.seed(583)
system.time({
  num_flips <- 100000
  
  coin_flips <- sample(c("Heads", "Tails"), num_flips, replace = TRUE)
  num_heads <- sum(coin_flips == "Heads")
  
  probability_heads <- num_heads / num_flips
})
probability_heads

Rprof(NULL)
summaryRprof()
