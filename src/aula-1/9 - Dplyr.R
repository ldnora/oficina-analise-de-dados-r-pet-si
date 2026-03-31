# vamos instalar o pacote dplyr
# copie e cole isso no terminal
install.packages("dplyr")

# após instalar, podemos importar o pacote para o nosso código,
# assim vamos usar todas as suas funcionalidades

library(dplyr)
# ou
require(dplyr)


# também iremos utilizar o nosso dataset de carros

dados <- mtcars


# com a biblioteca instalada, importada em com o dataset em mão,
# vamos analisar os dados com dplyr


# O dplyr usa o operador pipe |> para encadear operações
# leia o |> como "e então..."

# filter() — filtrar linhas por condição

carros_potentes <- dados |>
  filter(hp > 150)

carros_potentes


# select() — selecionar colunas específicas

dados |>
  select(mpg, hp, wt)

# arrange() - ordenar os dados 

# ordenando os dados da coluna hp na ordem crescente
dados |>
  arrange(hp)  # ordem crescente

# ordenando de forma decrescente o hp
dados |>
  arrange(desc(hp))  # desc() = ordem decrescente



# summarise() + group_by() — resumir por grupo

dados |>
  group_by(cyl) |> # agrupar por número de cilindros
  summarise(
    media_consumo   = mean(mpg), # renomendo as colunas 
    media_potencia  = mean(hp),
    n_carros        = n()
  )


# mutate() — criar ou modificar colunas

dados_modificados <- dados |>
  mutate(
    peso_kg = wt * 453.592   # convertendo peso de lb para kg
  )

head(dados_modificados) # veja que uma nova coluna foi adicionada

# documentação:
# https://dplyr.tidyverse.org/

# leitura complementar:
# https://en.wikipedia.org/wiki/Dplyr
# https://cran.rstudio.com/web/packages/dplyr/vignettes/dplyr.html