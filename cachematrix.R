## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#I didn't do much things.Just follow the sample code and write down the code.
#The only thing change is some simple variables.


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function

#Instead of the mean function in the sample code,I use the "solve" function.
#!is.null(m) can verifies whether it has been calculated before or not.If calculated before print "getting cached data".

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
}