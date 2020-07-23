## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function returns a list of functions that
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse matrix
#get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinv <- function(inverse) i <<- inverse
	getinv <- function() i
	list(set = set, get = get,
		 setinv = setinv,
		 getinv = getinv)
}


## Write a short comment describing this function
# retrieves corresponding inverse if cached
# otherwise solves for inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinv()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinv(i)
	i
}

