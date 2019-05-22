## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function:  
## makeCacheMatrix does 4 steps
## (1) set the value of the matrix
## (2) get its value
## (3) set the value of the inverse
## (4) get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if (!is.null(m)) {
    message("data from cache")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

