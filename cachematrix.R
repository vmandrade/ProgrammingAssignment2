## Put comments here that give an overall description of what your
## functions do

# This function will create a "matrix" object that can cache its inverse input matrix

## Write a short comment describing this function

# This matrix serves as a cache function 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        
        
      putinv <- function(cacheSolve) m <<- cacheSolve
      
      invertedmatrix <- function() m
      
       list(set = set, get = get,
            putinv = putinv,
            invertedmatrix = invertedmatrix)
}
        

}


## Write a short comment describing this function

#  This function gets the inverse of the "matrix" cache 
# returned by the function makeCacheMatrix 
# checks If the inverse has already been calculated and 
# checked if the  the matrix has not changed, only then
# should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$invertedmatrix()
        if(!is.null(s)) {
                message("processing data...please hold")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$putinv(m)
        m
        
}
