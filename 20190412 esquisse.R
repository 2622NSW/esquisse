# https://github.com/dreamRs/esquisse
# The esquisse package used to explore data. 
# Visualised with the ggplot2 package.
# Plots to start your visualisation process
install.packages("esquisse")
library(esquisse)
library(tidyverse)
# Use the RStudio addin to find and add ggplot2 builder
# Launch esquisse
esquisse::esquisser()
# Select data from drop down menu in esquisse ot load with
esquisse::esquisser(data = data.frame)
# Explore the drag and drop functionality of the package
# My example produced this code available for export.
ggplot(data = df) +
  aes(x = GameID, y = BIPS, color = Temp, size = Goals) +
  geom_point() +
  scale_colour_viridis_c(option  = "viridis") +
  labs(title = 'An Introduction to esquisse',
    x = 'Game',
    y = 'Playing Time (in seconds)',
    caption = 'Temperature, Humidity and Goals',
    subtitle = 'World Cup 2018: Playing Time') +
  theme_minimal()
# I wrote about this introduction at 
# https://keithlyons.me/blog/2019/04/14/starting-out-with-esquisse/
# A GitHub repository for this (with the data used)
# https://github.com/2622NSW/esquisse

# Drag and drop variables to create a plot from your selected data.frame