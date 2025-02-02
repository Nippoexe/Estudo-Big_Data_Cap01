# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("D:/FCDados/[02] - Fundamentos R/[03] - Projetos")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
vetor <- c(1:30)
vetor

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz <- matrix(data = 1:16, nrow = 4, ncol = 4, byrow = T)
matriz

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lista <- list(vetor, matriz)
lista

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat (site não tem dados)
file_name = "http://data.princeton.edu/wws509/datasets/effort.dat"
tabela <- data.frame(read.table(file_name))
tabela

# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")



# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
View(iris)
df_iris <- data.frame(iris)
length(df_iris)
nrow(df_iris)
head(df_iris)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(df_iris[,1], df_iris[,2])

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
df_filtro <- subset(df_iris,Sepal.Length > 7)
df_filtro

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
library(dplyr)
?slice
df_copia <- slice_sample(df_iris, n = 15)
df_copia

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
?filter()
df_copia_filtro <- filter(df_copia, Sepal.Length > 6 )
df_copia_filtro
