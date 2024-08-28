data("diamonds")
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)

## create a new column
mutate(diamonds, carat_2=carat*100)

# install.packages("here")
# library("here")
# install.packages("skimr")
# library("skimr")
# install.packages("janitor")
# library("janitor")

# install.packages("palmerpenguins")
# library("palmerpenguins")

## data summary
skim_without_charts(penguins)
## a quick view of data
glimpse(penguins)
## first rows of data
head(penguins)

## only select species
penguins %>% 
  select(species)

## select everything except species
penguins %>% 
  select(-species)

## rename
penguins %>% 
  rename(island_new=island)

## rename column names to upper case
rename_with(penguins,toupper)

## rename column names to lower case
rename_with(penguins,tolower)

## clean column names
clean_names(penguins)

## sort data in ascending order
penguins %>% arrange(bill_length_mm)

## sort data in descending order
penguins %>% arrange(-bill_length_mm)

## save to a new dataframe
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

## "group by" puts data of same values together
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species,island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm),mean_bl = mean(bill_length_mm))

## filter data
penguins %>% filter(species == "Adelie")
                                                                  