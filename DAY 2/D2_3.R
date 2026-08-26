classA <- c(76,35,47,64,95,66,89,36,84)
classB <- c(51,56,84,60,59,70,63,66,50)

mean(classA)
median(classA)
range(classA)
max(classA) - min(classA)

mean(classB)
median(classB)
range(classB)
max(classB) - min(classB)

boxplot(classA, classB,
        names = c("Class A", "Class B"),
        main = "Class A vs Class B",
        ylab = "Marks")