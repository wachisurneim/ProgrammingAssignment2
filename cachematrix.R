## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function can cache its inverse
makeCacheMatrix <- function(x = matrix()) {

i <- NULL

##Following function sets the matrix
set <- function(matrix)
{
	m <<- matrix
	i <<- NULL
}

##Following function returns the matrix
get <- function()
{
	m
}

##Following function sets the inverse of the matrix
setInverse <- function(inverse)
{
	i <<- inverse
}

##Following function returns the inverse of the matrix
getInverse <- function()
{
	i
}

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getInverse()

## m is not null so I have the inverse at the cache
if( !is.null(m) ) {
            message("matrix already cached")
            return(m)
}

## Get the matrix 
data <- x$get()

## inverse using matrix multiplication
m <- solve(data) %*% data

## Set the inverse to the object
x$setInverse(m)

## Return the matrix
m

}
