## Put comments here that give an overall description of what your
## functions do

## Hello. This function takes a matrix and creates a list of functions to 1)get the values of the
## matrix, 2) set the values of the matrix, 3) get the inverse of the matrix, 4) set the inverse
## of the matrix

makeCacheMatrix <- function(x = matrix())
  {inv <- NULL
  set <- function(y){
      x<<-y
      inv<<-NULL
  }
  get <- function() x
  setin <- function(inverse) inv <<- inverse
  getin <- function() inv
  list( get = get, set = set, getin = getin, setin = setin)
  
}


## This function takes a list created by makeCacheMatrix and returns the inverse of the matrix
## (from cache if available), and caches the inverse.

cacheSolve <- function(x, ...) {
  inv <- x$getin()
  if(!is.null(inv)){
      message("getting cached data")
      return(inv)
      }
  ma <- x$get()
  inv <- solve(ma)
  x$setin(inv)
  inv
  }
