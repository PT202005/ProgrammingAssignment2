## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A function that creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  
  set <- function(y){
    
    x <<- y
    
    n <<- NULL
    
  }
  
  get <- function() x
  
  setinverse <- function(inverse)
    n <<- inverse
  
  getinverse <- function() n
  
  list(set = set,
       get = get,
       
       setinverse = setinverse,
       
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrs <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  invrs <- solve(mat, ...)
  x$setinverse(invrs)
  invrs
  
  }
