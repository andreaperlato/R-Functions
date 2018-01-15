# Calculate the k-th Windsorised mean of the vector x

# Winsorized mean is an approach whereby one discards the kth smallest and kth largest values 
# and then take the average.
# This trimmed mean is less susceptible to outliers then an untrimmed mean.

x <- c(32.45, 45.84, 45.78, 89.21, 34.56, 567.89, 3245.67, 23.45, 678.65, 1254.67)
wmean <- function(x, k) {
    
    x <- sort(x) # order vector x
    n <- length(x) 
    x[1:k] <- x[k+1] # lowest k values
    x[(n-k+1):n] <- x[n-k] # highest k values
    return(mean(x))
}

# Compare mean with Windsorised mean 
mean(x)
wmean(x, 3)

