# lendo um dataset de carros já prensente dentro do R

dados <- read.csv("data/titanic.csv")
# importe o pacote, caso não tenha feito isso antes
library(dplyr)


# agrupa os dados em dois grupos de acordo com o sexo
# e cria novas colunas com o total de pessoas, a média,
# o mínimo e o máximo da idade para cada grupo, ignorando
# os valores NA

dados |>
  group_by(Sex) |>
  summarise(
    total = n(),
    media = mean(Age, na.rm = TRUE),
    minimo = min(Age, na.rm = TRUE),
    maximo = max(Age, na.rm = TRUE)
  )

