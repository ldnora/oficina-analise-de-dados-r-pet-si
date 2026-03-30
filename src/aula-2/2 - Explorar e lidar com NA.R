# lendo um dataset de carros já prensente dentro do R
dados <- read.csv("data/titanic.csv")

# mostra as primeiras linhas do dataset head(dados)
# mostra uma visão geral do dataset

summary(dados)

# listar as primeiras linhas do dataframe

head(dados)


# importe o pacote dplyr

library(dplyr)


# adicionar uma nova coluna com a idade em meses
# e removendo os valores NA dados |>

dados |>
  summarise(
    media_idade = mean(Age, na.rm = TRUE)
  )