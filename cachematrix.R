## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## This function sets/gets the value of both a matrix and an inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    
  }
  
  get <- function() x
  setInverse <- function(Inverse) m <<- Inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## This function returns the inverse of a matrix, but first it checks if the inverse of the 
## respective matrix has alredy been computed and cached, 
## therefore returning the cache matrix and not having to compute again.

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  
  #Check if there is Cache Data
  
  if(!is.null(m)) {
    message("getting cached data")
    
    #Returning Cache Data and exiting function
    
    return(m)
  }
  
  #No cache data found, computing...
  
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}