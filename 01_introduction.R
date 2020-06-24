# Inaugural meeting of the Lucerne R User Group
# https://www.meetup.com/Lucerne-R-User-Group/
# Introduction to tidyverse
# Dr Andrea De Angelis
# 24/06/2020

# Note: this is an R script
1 + 1    # `Ctrl + Enter` to execute

# Your Turn 
# Visit https://rstudio.cloud/spaces/70057/project/1411813
# Log in to your workspace
# Open 01_introduction.R
# Load the tidyverse packages
<delete and type your answer here>
  
  
  # 1. ggplot2 -----------------------------------------------------------

View(mpg)      # note: the View() has the capital "V"

# Your turn:
# Read this code and predict the resulting plot. 
# Only then, type it in the 01_introduction script and execute. Tip: pay
# attention to spelling, capitalization, and  parentheses!
<delete and type your answer here>
  
  
  
  # Your turn:
  # How can I draw a smoother instead of the points?
  ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))



# Your turn:
# How can I add a smoother on top of the points?
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))


# Pro tip: you can avoid tiping the argument names:
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) + 
  geom_smooth(aes(x = displ, y = hwy))




# 2. dplyr ----------------------------------------------------------------
View(mpg)


# `selecting` to keep only certain variables
mpg_rec <- select(mpg, displ, hwy)


# `filtering` to keep only observations (cars) from 1999
mpg_rec <- filter(mpg, year == 1999)


# Your turn: what is arrange() doing?
mpg_rec <- arrange(mpg, year)
View(mpg_rec)

mpg_rec <- arrange(mpg, desc(year))   # and what is desc() doing?
View(mpg_rec)


# Your turn: what is mutate() doing?
mpg_rec <- mutate(mpg, hwy_log = log(hwy))
View(mpg_rec)

