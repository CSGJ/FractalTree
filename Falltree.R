#install TurtleGraphics package
install.packages("TurtleGraphics")
library("TurtleGraphics")

#set the frame for graphics
set.seed(123)
turtle_init(1000, 1000, "clip")

#main function
turtle_do({
turtle_right(180)
turtle_col("white")
turtle_forward(250)
turtle_col("brown")
for(i in 1:3)
{
  turtle_left(20)
  turtle_forward(11)
}
for(i in 1:7)
{
  turtle_right(10)
  turtle_forward(11)
}
for(i in 1:10)
{
  turtle_right(5)
  turtle_forward(20)
}

turtle_left(150)
turtle_forward(150)
turtle_left(90)
for(i in 1:5)
{
  turtle_left(10)
  turtle_forward(11)
}
turtle_right(40)
for(i in 1:3)
{
  turtle_right(5)
  turtle_forward(20)
}
for(i in 1:3)
{
  turtle_right(1)
  turtle_forward(20)
}
for(i in 1:6) 
{
  turtle_right(5)
  turtle_forward(15)}


for(i in 1:10) 
{ 
  fractal(30,5,"lightgreen","darkgreen")
  turtle_left(50)
  turtle_forward(18)
  turtle_right(30)
}

turtle_col("white")

turtle_right(100)
turtle_forward(100)

for(i in 1:9) 
{ 
  fractal(30,5,"green","orange")
  turtle_left(30)
  turtle_forward(18)
  turtle_right(10)
}

turtle_col("white")
turtle_left(90)
turtle_forward(150)
turtle_left(90)
turtle_forward(20)

for(i in 1:10) 
{ 
  fractal(30,5,"lightgreen","red")
  
  turtle_right(30)
  turtle_forward(18)
  turtle_left(10)
}
turtle_col("white")
turtle_left(100)
turtle_forward(40)
turtle_left(40)
turtle_backward(40)
turtle_left(40)
turtle_backward(40)
turtle_right(40)
turtle_forward(30)



for(i in 1:10) 
{ 
  
  fractal(30,5,"green","orange")
  turtle_right(30)
  turtle_forward(18)
  turtle_left(10)
}
turtle_col("white")
turtle_left(90)
turtle_forward(100)

for(i in 1:10) 
{ 
  
  fractal(30,5,"orange","yellow")
  turtle_left(30)
  turtle_forward(18)
  turtle_right(10)
}
turtle_col("white")
turtle_right(60)
turtle_forward(100)
turtle_right(60)

for(i in 1:10) 
{ 
  
  fractal(30,5,"brown","yellow")
  turtle_left(30)
  turtle_forward(18)
  turtle_right(10)
}
turtle_col("white")
turtle_right(100)
turtle_forward(110)
turtle_right(60)
for(i in 1:10) 
{ 
  
  fractal(30,5,"red","yellow")
  turtle_left(30)
  turtle_forward(18)
  turtle_right(10)
}
turtle_col("white")
turtle_right(100)
turtle_forward(110)
turtle_right(60)
for(i in 1:10) 
{ 
  
  fractal(30,5,"brown","yellow")
  turtle_left(30)
  turtle_forward(18)
  turtle_right(10)
}
turtle_col("white")
turtle_left(100)
turtle_forward(110)
turtle_left(60)
turtle_forward(90)


})

# Fractal tree

fractal <- function(s=100,n=2,lc="green",rc="yellow") {
  if (n <= 1) {
    turtle_forward(s)
    turtle_up()
    turtle_backward(s)
    turtle_down()
  }
  else {
    turtle_forward(s)
    a1 <- 10
    turtle_left(a1)
    turtle_col(lc)
    fractal(s*0.7, n-1,lc,rc)
    turtle_right(a1)
    a2 <- 10
    turtle_right(a2)
    turtle_col(rc)
    fractal(s*0.7, n-1,lc,rc)
    turtle_left(a2)
    turtle_up()
    turtle_backward(s)
    turtle_down()
  }
}


