mivec <- c(0.5, 0.5)
names(mivec) <- c(1, 2)

as.numeric(names(mivec))  

x <- c(0.5,0.5)
names(x) <- c(1,2)
y <- c(0.4, 0.6)
names(y) <- c(3,4)
vecres <- rep(0, length(x)*length(y))
i = 1
for (x_ in names(x)) {
  for (y_ in names(y)) {
    names(vecres)[i] = as.numeric(x_)+as.numeric(y_) 
    i = i +1 
  }
}
names(vecres)
unique(names(vecres))
res <- rep(0, length(unique(names(vecres))))
names(res) <- unique(names(vecres))
res

i = 1
for (z in as.numeric(names(res)) ) {
  for (x_ in as.numeric(names(x)) ) {
    res[i] = res[i] + py( proba(z-x_, names(y)) )*px( proba(x_, names(x)) )
  }
  i = i +1
}
res

px <- function(x_){
  if(x_ == 0){
    return(0)
  } else{
    return(x[x_])
  }
}
py <- function(y_){
  if(y_ == 0){
    return(0)
  } else{
    return(y[y_])
  }
}

proba <- function(num, vec){
  ans = match(num, vec)
  if(is.na(ans)){
    return(0)
  } else {
    return(ans)
  }
}



names(vecres)[2] <- "a"
names(vecres)[3] <- "a"
names(vecres)[4] <- "a"
