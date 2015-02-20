## makeCacheMatrix creates a matrix object and calculates it's inverse.
## cacheSolve takes the cached matrix created by makeCacheMatrix, computes it's inverse
## and if unchanged, returns the cached matrix created in makeCachedMatrix

## Creates a matrix object that cache's it's inverse.

makeCacheMatrix <- function(x = matrix()) {
        myMatrix <<- x
        invMatrix <<- solve(x)
}

## Computes the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	if (x == myMatrix) {
		message("Getting cached data")
		return(invMatrix)
	}
}

