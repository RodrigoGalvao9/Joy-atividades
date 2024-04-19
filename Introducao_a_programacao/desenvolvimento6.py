"""
Enunciado:
Desenvolva um programa que recebe do usuário nome completo e ano de nascimento que seja entre 1922 e 2021.
A partir dessas informações, o sistema mostrará o nome do usuário e a idade que completou, ou completará, no ano atual (2022).

Caso o usuário não digite um número ou apareça um inválido no campo do ano, o sistema informará o erro e continuará perguntando até que um valor correto seja preenchido.

"""


def sendo_invasivo():
    while True:
        try:
            nome = input("Digite seu nome completo: ").lower()
            ano_nascimento = int(input("Digite o ano do seu nascimento: "))
            if ano_nascimento not in range(1922, 2022):
                raise ValueError("Digite um número válido entre 1922 e 2021")
            else:
                return nome, ano_nascimento
        except ValueError as e:
            print(e)
            
nome, ano_nascimento = sendo_invasivo()
print("Nome:", nome, "Seu ano de nascimento:", ano_nascimento)
