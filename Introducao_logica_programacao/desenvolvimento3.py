"""
Enunciado: 
Precisamos imprimir um número para cada andar de um hotel de 20 andares. Porém, o dono do hotel é supersticioso e optou por não ter um 13ro andar.

Escreva um código que imprima todos os números exceto o número 13.
Escreva mais um código que resolva o mesmo problema, mas dessa vez usando o laço de repetição 'while'.

Como desafio, imprima eles em ordem decrescente (20, 19, 18...)
"""


hotel_andares = 20


#usando o for
for i in range(20, -1, -1):
    if i != 13:
        print(i)


#usando o while
while hotel_andares >= 0:
    if hotel_andares != 13:
        print(hotel_andares)
    hotel_andares -= 1