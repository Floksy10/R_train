#чтоб вставить дату надо использовать команду:
library(tidyverse)
install.packages("readxl")
library(readxl)
read_excel("TestX.xlsx")
my_data <- read_excel("TestX.xlsx")

#View the data:
head(my_data) #осмотр сверху первых 6
tail(my_data) #осмотр снизу последних 6 [head(my_data, n)] n-any number
view(my_data) #осмотр полный весь

my_data[1,1] #first go Row then Column
my_data[ ,2] #it gonna give us full Row or Column (depends on where did you put a blank)
my_data$Друзья #выбор по категориям (возраст, имя и тд)

library(tidyverse) #or you can use [require(tidyverse)]

 #так же можно поставить & и сделать более сложное уточнение

my_data %>% 
  select(Name, Age) %>% 
  filter(Age < 20) %>% 
  arange(Weight)


my_data %>% 
  select(Name,Age,Heigth,Weight) %>% 
  filter(Age <20 & Weight > 50) %>% 
  arrange(Heigth)

my_data %>% 
  select(Name,Age,Heigth,Weight) %>% 
  filter(Age <20 & Weight > 50) %>% 
  arrange(Age)

my_data %>% 
  select(Name,Age,Heigth,Weight) %>% 
  filter(Age <20 & Weight > 50) %>% 
  arrange(Name)



tail(my_data) %>% 
  select(Name,Age,Heigth,Weight) %>% 
  filter(Age <20 & Weight > 50) %>% 
  arrange(Name)


head(my_data,2) %>% 
  select(Name,Age,Heigth,Weight) %>% 
  filter(Age <20 & Weight > 50) %>% 
  arrange(Name)
