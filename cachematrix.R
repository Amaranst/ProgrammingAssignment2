## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create a special matrix that can cache inverse.
makeCacheMatrix <- function(m = matrix()) {
  
  # DECLARE inverse
  inv <- NULL
  
  # SET metrix
  set <- function(matrix) {
    m <<- matrix
    inv <<- NULL
  }
  
  # GET metrix
  get <- function() m
  
  # SET inverse metrix
  setInverse <- function(inverse) inv <<- inverse
  
  # GET inverse metrix
  getInverse <- function() inv
  
  # RETURN lists of cache matrix
  list(set=set, get=get, 
       setInverse=setInverse, 
       getInverse=getInverse)
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
