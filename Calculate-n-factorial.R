# A functon has the form
name <- function(arg_1, arg_2, ...){ # arg can be any legitimate valid expression
  expression_1
  expression_2
  ...
  return(output) # optinal but preferred
}

# Calculate n factorial
nfactorial <- function(n){
  nfact <- prod(1:n) # compute product of all the element: 1*2*3*4*...n
  return(nfact)
}

nfactorial(4)


