remotes::install_github("liamgilbey/ggwaffle")
pacman::p_load(
    "tidyverse", 
    "ggwaffle"
)

dat_waffle <- mpg %>%
  waffle_iron(aes_d(group = class))

dat_waffle

dat_waffle %>%
  ggplot(aes(x, y, fill = group)) + 
  geom_waffle() + 
  coord_equal() + 
  theme_waffle()
