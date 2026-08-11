# Atividade 1: Data Frame -------------------------------------------------------------

alunos <- c("Mariana", "Henrique", "João", "Carlos", "Fernanda")
idade <- c(22, 23, 15, 28, 24)
genero <- c("F", "M", "M", "M", "F")
aprovado <- c(TRUE, FALSE, FALSE, TRUE, TRUE)


boletim <- data.frame(alunos, idade, genero, aprovado)
View(boletim)

boletim[ , 1:2] # acessar as duas primeiras colunas
boletim[1:2, ] # acessar as duas primeiras linhas

boletim[3, 2] <- 25 # trocando o valor da linha 3 coluna 2 para 25
boletim[3, 2]

boletim$nota <- c(8.8, 4.7, 5.0, 9.0, 8.0) # adicionando nova variável

boletim$genero <- NULL # excluindo a variável gênero

# Atividade 2: Trabalhando com for ----------------------------------------

nota <- c(8.8, 4.7, 5.0, 9.0, 8.0)

nota_final <- numeric()

for (i in 1:n) {
  nota_final[i] <- nota[i] + 0.5
}

print(nota_final)

# Atividade 3: Gráfico ----------------------------------------------------

print(boletim)
boletim$genero <- NULL
boletim$aprovado <- NULL
print(boletim)

remove.packages("vctrs")
install.packages("vctrs")
library(ggplot2)

# Gráfico de barras Aluno x Idade
ggplot(boletim, aes(x = boletim$alunos, y = boletim$idade)) +
  geom_col()

# Gráfico de barras horizontal Aluno x Notas
ggplot(boletim, aes(x = boletim$alunos, y = boletim$idade)) +
  geom_col(color = "#00BFFF") + coord_flip()

# Gráfico de dispersão
ggplot(boletim, aes(x = boletim$nota, y = boletim$idade)) + geom_point(color = "red")