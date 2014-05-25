## Takes 'x' as a square matrix and calculates the inverse.
## The inverse is cached in the varible 'cacheMatrix'.

makeCacheMatrix <- function(x = matrix()) {
  cacheMatrix<<-NULL
  cacheMatrix<<-solve(x)

}


## Checks to see if inverse matrix is cached.
## If it is, the inverse is returned. 
## If not, the inverse is calculated, then returned.
cacheSolve <- function(x) {
  if(!is.null(cacheMatrix)) {
    message("getting cached data")
    return(cacheMatrix)
  }
  else {
    cacheMatrix<<-NULL
    cacheMatrix<<-solve(x)
    return(cacheMatrix)
  }
  
}

