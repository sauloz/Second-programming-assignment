## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

						
								####### My functions #######
								#Saul O. Lopez-Llanes
																							
														
#Most of this code is based in the example provided for this assignment. Therefore I would
#not claim this is completely my original work. I adapted it from the version provided 
#after figuring out how to obtain the inverse of a matrix. 



makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x
        #Use solve to get the inverse of the matrix
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


cacheSolve <- function(x, ...) {
        #x = the output of the above function 
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("Getting cached data")
                return(inv)
        }
        data <- x$get()
        #Use solve to get the inverse of the matrix
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}


