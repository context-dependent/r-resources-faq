pacman::p_load("dplyr", "tibble", "ggplot2")

# Always set your seed when you're doing random stuff
set.seed(489)

# Data! 
dat <- mpg

# Sample randomly from the whole dataset: 

dat_sample_n <- dat |> sample_n(50)        # sample 50 rows
dat_sample_frac <- dat |> sample_frac(0.2) # sample 20% of rows

# Stratify sampling by group

dat_sample_n_by_class <- dat |> group_by(class) |> sample_n(5)      # sample 5 rows for each class
dat_sample_p_by_class <- dat |> group_by(class) |> sample_frac(0.2) # sample 20% of rows in each class

dat_sample_n
