## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function gets the required matrix,sets a value for inverse and gets the inverse
makeCacheMatrix <- function(x = matrix()) {
A<-NULL
set <- function(y) {
                x <<- y
                A <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse)A  <<- inverse
        getinverse <- function() A
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function
## This function takes the inverse value from the cache when it is present

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        A <- x$getinverse()
        if(!is.null(A)) {
                message("getting cached data")
                return(A)
        }
        data <- x$get()
        A<- solve(data, ...)
        x$setinverse(A)
        A
}
