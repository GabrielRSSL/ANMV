# 1) Um aluno decidiu economizar dinheiro. No início do mês, tinha R$150,00 guardados. Recebeu R$1000,00 e gastou 200. Crie a variável e calcule o saldo final, exibindo-o.

salario_inicial <- 150
salario <- 1000
gasto <- 200

salario_final <- salario_inicial + salario - 200
salario_final

# 2)
# tentativa

estoque <- c(notebook = 12, smartphone = 16, tablet = 28, fone = 8, carregador = 18)

soma_total <- sum(estoque)
soma_total

precisa_repor <- estoque < 15
precisa_repor

# correção

produto <- c("Notebook", "Smartphone", "Tablet", "Fone de ouvido", "Carregador")
qtd <- c(12, 16, 28, 8, 10)

estoque <- data.frame(produto, qtd)
estoque

sum(estoque[, 2])

reposicao <- estoque[, 2] < 15

estoque[reposicao, ]
