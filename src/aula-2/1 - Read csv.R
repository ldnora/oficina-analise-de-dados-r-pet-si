
# ler aqquivo csv direto da internet

dados <- read.csv(
  "https://raw.githubusercontent.com/
  datasciencedojo/datasets/master/titanic.csv"
)

# ler arquivo csv dentro da pasta dados

dados <- read.csv("data/titanic.csv")

# leitura complementar:
# https://learn-r.org/r-tutorial/read-csv.php