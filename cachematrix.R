## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

   cache <- NULL
   ## set the value of the vector
   setvect <- function(y)  {
        x <<- y
        cache <<- NULL
        }
   ## get the value of the vector
   getvect <- function() x
   ## set the value of the mean
   setmean <- function(solve)  { 
        cache <<- solve
        }
   ## get the value of the mean
   getmean <- function() cache
   ## list
   list(setvect = setvect, getvect = getvect,
   setmean = setmean
   getmean = getmean)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

   m <- x$getmean()
        ## Check for values
   if(!is.null(m))  {
        message("getting cached data")
        return(m)
        }
   ## Invert and cache
   data <- x$get()
   m <- solve(data, ...)
   x$setmean(m)
   m

}
