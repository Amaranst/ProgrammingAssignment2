## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

## Write a short comment describing this function
# Create a special metrix above.
# Then, Check the condition.
# If it already exist, get the inverse metrix from cache
# Otherwise, compute a new one
cacheSolve <- function(x, ...) {
  
  # GET inverse metrix of x
  ix <- x$getInverse()
  
  # CHECK if there is inverse metrix
  if(!is.null(ix)) {
    message("getting cached data")
    return(ix)
  }
  
  # GET metrix
  m <- x$get()
  
  # CALCULATE inverse 
  ix <- solve(m, ...)
  
  #SET inverse
  x$setInverse(ix)
  
  ## Return a matrix that is the inverse of 'x'
  ix
}
