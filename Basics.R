installed.package
install.packages("tidyverse")
library("tidyverse")
tidyverse_update()

## update all packages
update.packages()
## update one package
install.packages("package name")

install.packages("palmerpenguins")
library("palmerpenguins")
summary(penguins)
View(penguins)

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))

print("Coding in R")

first_variable <- "This is my variable"
second_variable <- 12.5
vec_1 <- c(12,45,67,89)

quarter_1_sales <- 1000
quarter_2_sales <- 399
midyear_sales <- quarter_1_sales + quarter_2_sales
yearend_sales <- midyear_sales * 2
