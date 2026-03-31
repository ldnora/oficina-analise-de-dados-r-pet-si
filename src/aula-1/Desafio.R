# Usando o dataset (dataframe) mtcars:

# 1. Filtre apenas os carros com 4 cilindros (cyl == 4)

# passo a passo:
# importe o dataset (dataframe) mtcars
# importe a biblioteca dplyr
# use a função filter()

# o dataframe já foi importado
dados <- mtcars

# 2. Crie uma coluna chamada "potencia_por_peso" = hp / wt

# dica:
# use a função mutate

# 3. Ordene do maior para o menor pela nova coluna

# 4. Mostre apenas as colunas: mpg, hp, wt e potencia_por_peso