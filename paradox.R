library(ggplot2)
library(tidyr)
library(palmerpenguins)
library(ipw)

penguins <- penguins |>
  drop_na(sex)

ggplot(penguins, 
       aes(x = bill_depth_mm,
           y = body_mass_g, 
           color = species)) +
  geom_point() +
  geom_smooth(method = "lm") +
  geom_smooth(aes(color = NULL), method = "lm")

