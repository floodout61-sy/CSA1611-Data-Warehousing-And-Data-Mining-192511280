x <- c(
  1,1,5,5,5,5,5,8,8,
  10,10,10,10,12,14,14,14,
  15,15,15,15,15,15,
  18,18,18,18,18,
  20,20,20,20,20,20,20,
  21,21,21,21,
  25,25,25,25,25,
  28,28,30
)

bins <- split(x, ceiling(seq_along(x)/3))

print(bins)

bin_mean <- lapply(bins, function(b) {
  rep(mean(b), length(b))
})

print(bin_mean)

bin_boundary <- lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  
  sapply(b, function(v) {
    if (abs(v-low) <= abs(v-high))
      low
    else
      high
  })
})

print(bin_boundary)

hist(x,
     main = "Histogram of Electronics Prices",
     xlab = "Price",
     ylab = "Frequency")