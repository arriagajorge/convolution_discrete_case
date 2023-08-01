With the namednum object in R, it is possible to do convolution in discrete case.

The following code is how to use this function.

``` R
# numeric values in random variables
names(x) <- c(1,2)
names(y) <- c(3,4)

#vectors of probabilities of random variable
x <- c(0.5,0.5)
y <- c(0.4, 0.6)

# funtion to conv 
convolution_disc_ind(x,y)

#result
# 4   5   6 
# 0.2 0.5 0.3
```
This method works for any vector length. The length of the vectors to be added can be different.

Issues:
1. Verify that the entry is namednum object.
2. check that probability vectors sum to one.
