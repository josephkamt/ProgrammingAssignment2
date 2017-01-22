## Creates a list of set() and get()
## Funtion creates the environment of data where chacheSolve will feed for
## solution

## Sets the class of the values of x
## creates a list where to extract data
## to get inversem, the matrix has to be squared in dimensions
## NULL vector generated if this condition is not met
## print of warning messages

makeCacheMatrix <- function(x = matrix()) {
        set <- function(y) {
                x <<- y
        }
        if(nrow(x) != ncol(x)) {
                message("matrix is not squared")
                message("matrix is not set in function")
                x <- NULL
        }
        get <- function() x
        list(set = set, get = get)
}


## Very straightforward function, extracts the matrix from previous list

cacheSolve <- function(x, ...) {
        data <- x$get()
        inv <<- solve(data)
        inv
        ## Return a matrix that is the inverse of 'x'
}