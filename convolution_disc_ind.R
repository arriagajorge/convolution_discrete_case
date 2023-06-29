convolution_disc_ind <- function(x,y){

# functions needed  
  # return the index of the value num in vector vec
  index <- function(num, vec){
    ans = match(num, vec)
    if(is.na(ans)){
      return(0)
    } else {
      return(ans)
    }
  }
  # return probability of 'index' in vector x
  px <- function(index){
    if(index == 0){
      return(0)
    } else{
      return(x[index])
    }
  }
  # return probability of 'index' in vector y
  py <- function(index){
    if(index == 0){
      return(0)
    } else{
      return(y[index])
    }
  }
  
  # create a vector where value(v[i+j]) = value(x[i]) + value(y[j])
  temp <- rep(0, length(x)*length(y))
  i = 1
  for (x_ in names(x)) {
    for (y_ in names(y)) {
      names(temp)[i] = as.numeric(x_)+as.numeric(y_) 
      i = i +1 
    }
  }
  # get unique values, so we have only possible values in the sum
  unq_temp <- unique(names(temp))
  res <- rep(0, length(unq_temp))
  names(res) <- unq_temp
  
  # Convolution
  i = 1
  for (z in as.numeric(names(res)) ) {
    for (x_ in as.numeric(names(x)) ) { #TODO is better choose the vector with less length???
      res[i] = res[i] + py( index(z-x_, names(y)) )*px( index(x_, names(x)) )
    }
    i = i +1
  }
  return(res)
}

# vecs example
x <- c(0.5,0.4,0.3)
names(x) <- c(1,2)
y <- c(0.4, 0.6)
names(y) <- c(3,4,4)

# conv 
convolution_disc_ind(x,y)
# 4   5   6 
# 0.2 0.5 0.3 

#TODO check entry namednum
#TODO check sum vec equals to 1