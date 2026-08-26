data <- read.csv("diabetes.csv")

head(data)

plot(data$Age,
     data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19)

model <- lm(BloodPressure ~ Age, data = data)

abline(model)

data$AgeGroup <- cut(
  data$Age,
  breaks = c(0,20,30,40,50,60,100),
  labels = c("0-20","21-30","31-40",
             "41-50","51-60","60+")
)

avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = data,
  FUN = mean
)

barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure")data <- read.csv("diabetes.csv")

head(data)

plot(data$Age,
     data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19)

model <- lm(BloodPressure ~ Age, data = data)

abline(model)

data$AgeGroup <- cut(
  data$Age,
  breaks = c(0,20,30,40,50,60,100),
  labels = c("0-20","21-30","31-40",
             "41-50","51-60","60+")
)

avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = data,
  FUN = mean
)

barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure")