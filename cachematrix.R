## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
