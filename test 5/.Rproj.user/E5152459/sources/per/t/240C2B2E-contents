require(tidyverse)
view(msleep)
my_data <- msleep %>% 
  select(name, sleep_total, bodywt, order) %>% 
  filter(order == "Primates"| bodywt > 20)#coma = and, | = or
view(my_data)
my_data <- msleep %>%  
  filter(name %in% c("Dog", "Owl monkey", "Cat", "Goat", "Cow")) # also can use 
(filter(name == "Goat" |
         name == "Cow" |
         name == "Dog"))
view(my_data)
my_data <- msleep %>% 
  filter(between(sleep_total, 16, 19))
my_data <- msleep %>%
  select(name, sleep_total) %>% 
  filter(near(sleep_total, 15, tol = 0.6))
my_data <- msleep %>%
  select(name, sleep_total, conservation) %>% 
  filter(is.na(conservation))
view(my_data)  

