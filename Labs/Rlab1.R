## ----setup, echo = FALSE-------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
knitr::opts_knit$set(root.dir = '~/Dropbox/MathCamp/2020/Lecture1/Lab1')


## ---- eval = T, echo = T-------------------------------------------------
2+3
6*7
pi*1  
6*3/2-3
6*3/(2-3)
1/0


## ---- echo = T, eval = T-------------------------------------------------
3^2
2^(3+2)
sqrt(9)
sin(2*pi)
log(1000)  
exp(6.907755)   


## ---- echo = T, eval = F-------------------------------------------------
## ?log
## help("log")


## ---- echo = T, eval = F-------------------------------------------------
## help.search("log")
## args(log)


## ---- eval = T, echo = T-------------------------------------------------
x<-2 #Creates the object "x"
x    #Shows the contents of object "x"

y=3.5
y

h<-"practice"   #You can also put strings in an object
h


## ---- echo = T, eval = T-------------------------------------------------
is.integer(y)
is.numeric(y)
is.character(h)
is.matrix(x)


## ---- echo = T, eval = T-------------------------------------------------
ls()


## ------------------------------------------------------------------------
x     #Original object that we created above.
x<-7  #New object with same name
x     #New object


## ------------------------------------------------------------------------
data(cars)
summary(cars)


## ----pressure, echo=FALSE, fig.align = 'center', fig.cap = "For example, this figure was created with \tt{echo = FALSE} and \tt{eval = TRUE.}"----
plot(pressure)

