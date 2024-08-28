# install.packages("dplyr")

data("ToothGrowth")
View(ToothGrowth)

## filtering
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

## sorting
arrange(filtered_tg,len)

## nested function
arrange(filter(ToothGrowth,dose==0.5),len)

## Pipes express a sequence of multiple operations, represented with "%>%"
## shortcut: control + shift + m
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

View(filtered_toothgrowth)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm=T),.group="drop")

View(filtered_toothgrowth)
