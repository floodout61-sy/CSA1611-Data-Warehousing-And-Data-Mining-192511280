install.packages("HSAUR")
library(HSAUR)

data(water)

plot(water$hardness,
     water$mortality,
     main = "Mortality vs Hardness",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19)

model <- lm(mortality ~ hardness, data = water)

summary(model)

abline(model)

predict(model,
        newdata = data.frame(hardness = 88))