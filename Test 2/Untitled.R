library(tidyverse)
data() #to check pre-loaded datasets
View(starwars)
starwars %>% 
  select(gender, mass, height, species) %>% 
  filter(species == "Human") %>% # (==) we use to ask for one of the variables (not number)
  na.omit( ) %>% # to not show the row with missing info 
  mutate(height = height/100) %>% #to change a variable in the table 
  mutate(bodymass = mass/height^2) %>% #(formula of BMI is mass/height^2 )
   group_by(gender) %>% # in order to group
  summarise(Avarage_bodymass = mean(bodymass)) #для того чтоб сделать итог 
   
 



 