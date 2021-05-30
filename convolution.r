multiplicar <- function(vector_a){
  resultado=1
  for (i in 1:length(vector_a)) {
    resultado = resultado*vector_a[i]
  }
  return(resultado)
}

v <- rep(0, 100)
p <- c()
for (i_1 in 1:8) {
  switch (i_1, p[1]<-0.3, p[1]<-0.3, p[1]<-0.2, p[1]<-0.1, p[1]<-0.1)
  for (i_2 in 1:8) {
    switch (i_3, p[2]<-0.3, p[2]<-0.3, p[2]<-0.2, p[2]<-0.1, p[2]<-0.1)
    for (i_3 in 1:8) {
      switch (i_3, p[3]<-0.3, p[3]<-0.3, p[3]<-0.2, p[3]<-0.1, p[3]<-0.1)
      for (i_4 in 1:8) {
        switch (i_4, p[4]<-0.3, p[4]<-0.3, p[4]<-0.2, p[4]<-0.1, p[4]<-0.1)
        for (i_5 in 1:8) {
          switch (i_5, p[5]<-0.3, p[5]<-0.3, p[5]<-0.2, p[5]<-0.1, p[5]<-0.1)
          for (i_6 in 1:8) {
            switch (i_3, p[6]<-0.3, p[6]<-0.3, p[6]<-0.2, p[6]<-0.1, p[6]<-0.1)
            for (i_7 in 1:8) {
              switch (i_3, p[7]<-0.3, p[7]<-0.3, p[7]<-0.2, p[7]<-0.1, p[7]<-0.1)
              for (i_8 in 1:8) {
                switch (i_8, p[8]<-0.3, p[8]<-0.3, p[8]<-0.2, p[8]<-0.1, p[8]<-0.1)
                valor <- i_1 + i_2 + i_3 + i_4 + i_5
                v[valor] <- v[valor] + multiplicar(p)
              }
            }
          }
        }
      }
    }
  }
}


view(v)
v
0.3^5
