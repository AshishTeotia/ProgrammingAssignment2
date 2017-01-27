## a pair of functions that cache the inverse of a matrix.


## function 'makeCacheMatrix' creates a special "matrix" 
## the <<- operator is used to 
## assign a value to an object in an environment 
## that is different from the current environment. 
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse of matrix
## 4.get the value of the inevers of matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(val){
    x <<- val
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}





## function 'cacheSolve' return inverse of matrix 
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inverse <- x$getInverse()
  	if(!is.null(inv)){
    		message("getting cached matrix..")
    		return(inverse)
  	}
  	data <- x$get()
  	inverse <- solve(data)
  	x$setInverse(inverse)
  	inverse
}
