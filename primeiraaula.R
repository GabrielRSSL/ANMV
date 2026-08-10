# Primeira aula no R -- Gabriel ----------------------------
a <-  3 + 8

d <- 20 / 4

a

print(d)

# Funções matemáticas ------------------------------------------------------

abs(-7.5) #valor absoluto

log(20) # log na base e
log10(20) # log na base 10

log2(20) # log na base 2
log(20, base = 2) # setar o valor da base


# Trabalhando com variáveis -----------------------------------------------

preco <- 10
quantidade <- 3

total <- preco * quantidade

# Considere as notas

nota1 <- 8.5
nota2 <- 9.0
nota3 <-  7.5

# Calcule a média

# jeito que fiz antes
media <- (nota1 + nota2 + nota3)/3

print(media)

# printei essa função para testar, parece que ela arredonda para cima o valor da média
print(mean(nota1, nota2, nota3))

# jeito que o professor fez

notas <- c(nota1, nota2, nota3)
print(notas)

mean(notas) # antes tinha dado errado porque a função trabalha em vetores

# Criando um vetor nome disciplinas

disciplinas <- c("Matemática", "Português", "Física")
disciplinas

# Criando um DataFrame

historico <- data.frame(disciplinas, notas)
print(historico)
View(historico)
