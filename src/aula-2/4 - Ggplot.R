# o ggplot2 é uma biblioteca utilizada para criar gráficos no R de forma simples e poderosa, sendo muito comum em análise de dados.

# você pode instalar o ggplot2 usando esse comando no terminal
# install.packages("ggplot2")
# mais informações sobre instalação de pacotes na aula 1, 
# https://www.datacamp.com/pt/tutorial/r-packages-guide

# agora, podemos importar o pacote para fazer os plots

library(ggplot2)


# importe os dados, caso não tenha feito isso antes
dados <- read.csv("data/titanic.csv")


head(dados)

str(dados)

# gera um gráfico de barras para mostrar
# a contagem de passageiros por sexo

ggplot(dados, aes(x = Sex)) + geom_bar()

# gera um gráfico de barras para mostrar a
# contagem de passageiros por classe (pclass)

ggplot(dados, mapping = aes(x = Pclass)) + geom_bar()

# gera o mesmo gráfico de barras, mas agora
# com as barras preenchidas de acordo com a
# variável "Survived", mostrando a contagem de
# passageiros por sexo e sobrevivência
# o labs() serve para adicionar legendas
# aos plots

ggplot(dados, aes(x = Sex, fill = factor((Survived)))) +
  geom_bar() +
  labs(
    title = "Sobreviventes por sexo",
    x = "Sexo",
    Y = "Quantidade",
    fill = "Sobreviveu"
  )


# gera um gráfico de barras para mostrar a
# contagem de passageiros por classe (pclass)
# vivos

ggplot(dados, mapping = aes(x = Pclass, fill = factor(Survived))) +
  geom_bar() +
  labs(
    title = "Sobreviventes por classe",
    x = "Classe",
    Y = "Quantidade",
    fill = "Sobreviveu"
  )
