## Put comments here that give an overall description of what your
## functions do

## As far as i understand, the functions first stores a matrix and can cache 
## its inverse. it can then calculate the inverse of a matrix of a new
## value or determin if it can reuse the cached data if the values are the same
## there by saving resources.... Cache me outside, how bout data?!?!?

## Write a short comment describing this function

## we created 4 functions of setters and getters
## we can use the 2 objects x and s to set and cashe values
## then we store the names in a list so we can call them later with $
## ...learning this is like peeling onions :) 
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

## we use this function to retrieve the "solve" or inverse value of the 
## matrix then checks if it is not null (which seems like a double negative)
## to determin if the inverse needs to be re-computed or it can use the 
## cached value... Thanks for reading, any input at all is appreciated.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
 