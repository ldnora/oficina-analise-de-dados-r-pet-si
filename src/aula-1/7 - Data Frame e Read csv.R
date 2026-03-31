dados <- data.frame(
  nome = c("Ana", "João", "Maria"),
  idade = c(20, 25, 30)
)

# mostrar todos os dados dessa tabela
print(dados)

# mostrar apenas as idades
print(dados$idade)

# traduzindo do inglês, read csv = leia o csv
# serve para ler o csv (dataset) de uma pasta
# ou um local na internet para dentro do R


# lendo um csv disponível na internet
titanic <- read.csv(
  "https://raw.githubusercontent.com/
  datasciencedojo/datasets/master/titanic.csv"
)


# lendo um csv dentro de uma pasta
dados <- read.csv("data/titanic.csv")


# lendo um dataset de carros já prensente dentro do R
dados <- mtcars



# listar as primeiras linhas do dataset
head(dados)


# listar as últimas linhas do dataset
tail(dados)


# estrutura: tipos de cada coluna
str(dados)


# resumo estatístico rápido
summary(dados)


# dimensões do dataset: linhas x colunas
nrow(dados)
ncol(dados)
dim(dados)


# nomes das colunas
names(dados)


# ver uma coluna específica
dados$mpg   # consumo em milhas por galão (mpg = miles per gallon)
dados$hp    # potência em cavalos (hp = horse power)

# leitura complementar:
# https://www.w3schools.com/r/r_data_frames.asp