data(mtcars)

plot(mtcars$mpg,
     type = "o",
     xlab = "Cars",
     ylab = "Value",
     main = "MPG and QSEC")

lines(mtcars$qsec,
      type = "o")

legend("topright",
       legend = c("mpg","qsec"),
       lty = 1)