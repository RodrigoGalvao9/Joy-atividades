"""
Enunciado: 
Faça uma função calculadora de dois números com três parâmetros: os dois primeiros serão os números da operação e o terceiro será a entrada que definirá a operação a ser executada. Considera a seguinte definição:
1. Soma
2. Subtração
3. Multiplicação
4. Divisão

Caso seja inserido um número de operação que não exista, o resultado deverá ser 0.

"""

def calculadora():
    if operacao == 1:
        soma = num_1 + num_2
        return soma
    elif operacao == 2:
        subtracao = num_1 - num_2
        return subtracao
    elif operacao == 3:
        multiplicacao = num_1 * num_2
        return multiplicacao
    elif operacao == 4:
        divisao = num_1 / num_2
        return divisao
    else:
        return "Opção inválida"
    
print("""
        Essas são as operações disponiveis:
        1 - soma
        2 - Subtração
        3 - Multiplicação
        4 - Divisão
        """)
    
operacao = int(input("Qual operação deseja fazer: (digite o número)"))
    
num_1 = float(input("Digite o primeiro número: "))
num_2 = float(input("Digite o segundo número: "))
print(calculadora())