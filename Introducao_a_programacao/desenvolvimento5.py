"""
Enunciado:
Faça uma função calculadora que os números e as operações serão feitas pelo usuário. O código deve ficar rodando infinitamente até que o usuário escolha a opção de sair. No início, o programa mostrará a seguinte lista de operações:

1: Soma
2: Subtração
3: Multiplicação
4: Divisão
0: Sair

Digite o número para a operação correspondente e caso o usuário introduza qualquer outro, o sistema deve mostrar a mensagem “Essa opção não existe” e voltar ao menu de opções.

Após a seleção, o sistema deve pedir para o usuário inserir o primeiro e segundo valor, um de cada. Depois precisa executar a operação e mostrar o resultado na tela. Quando o usuário escolher a opção “Sair”, o sistema irá parar.

É necessário que o sistema mostre as opções sempre que finalizar uma operação e mostrar o resultado. 

"""

def calculadora():
    while True:
        print("""
        Essas são as operações disponiveis:
        1 - Soma
        2 - Subtração
        3 - Multiplicação
        4 - Divisão
        0 - Sair
        """)
    
        operacao = int(input("Qual operação deseja fazer: (digite o número)"))
        
        if operacao == 0:
            print("Fechando calculadora...")
            break
        
        num_1 = float(input("Digite o primeiro número: "))
        num_2 = float(input("Digite o segundo número: "))
    
        if operacao == 1:
            resultado = num_1 + num_2
            print(f"Resultado: {resultado}")
        elif operacao == 2:
            resultado = num_1 - num_2
            print(f"Resultado: {resultado}")
        elif operacao == 3:
            resultado = num_1 * num_2
            print(f"Resultado: {resultado}")
        elif operacao == 4:
            if num_1 == 0 or num_2 == 0:
                print("Erro, dividir por 0 é brincadeira")
            resultado = num_1 / num_2
            print(f"Resultado: {resultado}")
        else:
            print("Opção inválida")
    

calculadora()