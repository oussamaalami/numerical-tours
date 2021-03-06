





meshgrid_2d <- function(x, y) {
  
  x <- c(x); y <- c(y)
  n <- length(x)
  m <- length(y)
  
  X <- array(rep(x, each = m),  c(m, n))
  Y <- array(rep(y, times = n),  c(m, n))
  
  return(list(X = X, Y = Y))
}




meshgrid_3d <- function(x, y, z) {
  
  x <- c(x); y <- c(y); z <- c(z)
  n <- length(x)
  m <- length(y)
  l <- length(z)
  
  X <- array(rep(x, each = m, times = l),  c(m, n, l))
  Y <- array(rep(y, each = 1, times = n*l),  c(m, n, l))
  Z <- array(rep(z, each = n*m, times = 1),  c(m, n, l))
  
  return(list(X = X, Y = Y, Z = Z))
}