

# the here package is intalled which helps for reference in data, and then its loaded
install.packages('here')
library(here)

# the simr package summerizes the data, so I also installed it and loaded
install.packages('skimr')
library(skimr)

# the janitor pakage does the cleaning, so I installed and dloaded it.
install.packages('janitor')
library(janitor)

# the top mentioned packages uses some of the dplyr featurs, thats why I loaded it.
library(dplyr)

# Installed the palmerpenguins data and loaded it.
install.packages('palmerpenguins')
library(palmerpenguins)

# skim_without_charts is used to pull data informations
skim_without_charts(penguins)

# this function is used to pull a summery of the first 10 rows of a data.
glimpse(penguins)

head(penguins)
View(penguins)

# this function select with pipe is used to pull the only column that you are interested in.
penguins %>% 
  select(species)

# this is also used to deselect the unwanted columns and pull the rest.
penguins %>% 
  select(-species)

# rename() function is used to rename the columns if wanted.
penguins %>% 
  rename(island_Cusub = island)

# rename_with() function is used to change the column names to uppercase or lowercase. 
rename_with(penguins, toupper)
rename_with(penguins, tolower)

# clean_name() this function insure's that there is only number, character and underscores are in the names.
clean_names(penguins)


library(tidyverse)

# to sort the penguins table on ascending by bill_length_mm
penguins %>% arrange(bill_length_mm)
# to sort the penguins table on descending by bill_length_mm
penguins %>% arrange(-bill_length_mm)

View(penguins)

# I sorted and copied the penguins data to a new variable namely penguins_labaad to keep the original data and avoid data loss.
penguins_labaad <- penguins %>% arrange(bill_length_mm)
View(penguins_labaad)

# I grouped the penguins data by Island, and then dropped the NA values and calculated the mean of the bill_length_mm as mean_ka_jaziiradaha_mm.
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_ka_jaziiradaha_mm = mean(bill_length_mm))

# this code groups the penguins into spieces and island, summarize's it and calculated the mean, max and min of each island and speices.
penguins %>%group_by(species, island) %>% drop_na() %>% summarize(Meanla_Xaasilka = mean(bill_length_mm), Badashada_Xaasilka = max(bill_length_mm), Liidashada_Xaasilka = min(bill_length_mm))



# I created data Id,Magaca,Shaqada, and then gave them values and made them data frames
id <- c(1:10)
Magaca <- c("Xamze Muztafe", "Maxamed Cabdilahi", "Xuseen Cabdi", "Hodan Xaashi", "General Caydid", "Cabdiqani Jamal","Faadumo Maxamed", "Ismacil Yabal", Mahdi Guuled", "Cali Mustafe")
shaqada <- c("Maamule", "LA Taliye", "Xaadhe","Waashmaan","ASkari","Farsamo Yiqan","Agasime","Xisaabiye","Turjumaan","Taliye")
employee <- data.frame(id,Magaca,shaqada)
print(employee)

# I separated the magaca into magaca_ilamaha and Magaca_Aaboha by using separate function.
separate(employee, Magaca,into = c('Magaca_ilmaha','Magaca_Aaboha'))

# this function unites two different column, although I dont have the data to demonstrate.
unite(employee, "magaca", Magaca_ilmaha,Magaca_Aaboha)

shaqaale <- data.frame(id, Magaca_ilmaha, Magaca_Aaboha, shaqada)

# mutate function adds a new column called body_mass_kg using the body_mass_g divided by 1000.
penguins %>% mutate(Body_Mass_kg = body_mass_g/1000)

# I have installed the SimDesing package to do analysis wi Bias function
install.packages("SimDesign")
library(SimDesign)

# bias function calculates the bias of two data. 'the closer to zero, the more unbaised the data will be' 
Actual_Sales <- c(12, 33, 45, 66 ,70)
Predicted_Sales <- c(200,22,56,66,70)
bias(Actual_Sales,Predicted_Sales)















