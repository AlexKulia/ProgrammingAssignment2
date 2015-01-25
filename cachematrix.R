## This function creates cash for solve matrix operation
## If this matrix have been cashed already, then function doesn't recalculate it

## Create a cash

makeCacheMatrix <- function(x) {
  mx <- NULL
  set <- function(y) {
    x <<- y
    mx <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) mx <<- solve
  getsolve <- function() mx
  list(set = set, get = get, getsolve = getsolve, setsolve = setsolve)
}


## Implement a solve function

cacheSolve <- function(x = matrix(), ...) {
  mx <- x$getsolve()
  if(!is.null(mx)) {
    message("getting cached data")
    return(mx)
  }
  data <- x$get()
  mx <- solve(data, ...)
  x$setsolve(mx)
  m
}

