
install.packages("naniar")
library(naniar)

# podsumowanie braków
vis_miss(supermarket_new)

# wizualizacja braków 
miss_var_summary(supermarket_new)
gg_miss_upset(supermarket_new)

# wykryj wzorce braków danych
gg_miss_var(supermarket_new)

install.packages("VIM")
library(VIM)
dane <- hotdeck(supermarket_new)

install.packages("dlookr")
library(dlookr)
ggimputate_na

dane2 <- imputate_na(supermarket_new, method = "knn", k = 3)