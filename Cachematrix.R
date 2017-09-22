## Assignment for Week 3: Submitted by Rahul Khandelwal

## Two functions that will cache the inverse of a matrix


makeCacheMatrix <- function( mat = matrix() ) {    ## Creating a special matrix object that can cache its inverse
    i <- NULL

    ## Method for setting the matrix to mat
    set <- function( matrix ) {
            mat <<- matrix
            i <<- NULL
    }

    ## method for getting the matrix
    get <- function() {mat
    }

    ## Method for setting the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Method to get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

##2nd function
cacheSolve <- function(x, ...) {

    ## code to return a matrix that is the inverse of 'x'
    mat <- x$getInverse()

    ## return the inverse if its already set
    if( !is.null(mat) ) {
            message("getting cached data")
            return(mat)
    }

    ## code to get the matrix from the object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    mat <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(mat)

    ## Return the matrix
    mat
}
