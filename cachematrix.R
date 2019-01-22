## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv=NULL
  set=function(matrix) #this function set the value of matrix
  {
    m<<-matrix
    inv<<-Null
  }
  get=function()#this function get the actual of matrix
  {
    m
  }
  setInverse=function(inverse) #this function set the value of the inverse of the matrix
  {
    inv<<-inverse
  }
  getInverse=function()#this function get the the inverse of the matrix
  {
    inv
  }
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m=x$getInverse()
  if(!is.null(m)){
    message("get the cached data")
    return(m)
  }
  data=x$get()#get the actual matrix
  m=solve(data)
  x$setInverse(m)#updating the variable
  m
}
m=matrix(rnorm(16),4,4)
m1=makeCacheMatrix(m)
cacheSolve(m1)
