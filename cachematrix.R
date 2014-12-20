## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   rm <- NULL
    set <- function(y) {
        x <<- y
        rm <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) rm <<- solve
    getsolve <- function() rm
    list(set = set, get = get, setsolve = setsolve, getsolve= getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   rm <- x$getsolve()
    if(!is.null(rm)) {
        if(identical(x,rm))
        message("getting cached data")
        return(rm)
    }
    data <- x$get()
    rm <- solve(data,...)
    x$setsolve(rm)
    rm
        ## Return a matrix that is the inverse of 'x'
}
