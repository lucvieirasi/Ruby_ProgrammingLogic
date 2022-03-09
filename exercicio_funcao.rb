# Danilo é um empresario
# ele precisa de um programador que faca um software que tenha alguns recursos.
# 1 - Calcular a tabuada do numero digitado.
# 2 - ele precisa ler um nome e mostrar este nome concatenado com a frase ~vamos la guerreiros
# 3- calcular a tabuada e mostrar também a frase acima com o nome.
sleep(1)
    puts "Olá,seja bem vindo ao nosso Sistema de Calculo!"
sleep(1)
    puts "Poderia informar o seu nome por gentileza?"
nome_do_cliente = gets.to_s
system `clear`
    puts "\nSeja bem vindo ao nosso software #{nome_do_cliente}!!"
sleep(3)
system `clear`
def menu
    puts "...................................................................."
    puts "                              CalcSytem                             "
    puts "...................................................................."
    puts "1 - CALCULAR TABUADA"
    puts "2 - AUTENTICACAO"
    puts "3 - CALCULAR TABUA ESPECIAL"
    puts "4 - SAIR"
    puts "SELECIONE UMA DAS OPÇOES PARA INICIAR O SISTEMA!"
end

def saindo_do_programa
    puts "----------------------------------"
    puts "        SAINDO DO SISTEMA...      "
    puts "----------------------------------"
    puts Time.now
    sleep(3)
end

def tabuada_limpa
    sleep(3)
    system `clear`
    puts "Informe o número que deseja saber a tabuada"
        entrada_numero = gets.to_i
        multiplicador = 0
        system `clear`
        puts "O resultado da sua tabuada multiplicando por (#{entrada_numero}) foi:"
    while (multiplicador <= 10)
            resultado = entrada_numero * multiplicador
            puts "#{entrada_numero} x #{multiplicador} = #{resultado}"
            multiplicador = multiplicador + 1
            sleep(0.1)
    end
    puts "Tabuada finalizada..." 
    sleep(5)
    system `clear`
end



opcao = 0
while opcao != 4 do
    menu()  #funcao de menu instanciada.
    opcao = gets.to_i
    case opcao

    when 1
        tabuada_limpa()
        
    when 2
        puts "-----------------------------------------"
        puts "Seja bem vindo ao MATHTECH,qual o seu nome?"
        nome_cliente = gets.to_s
        system `clear`
        puts "Voce está autenticado... #{nome_cliente}"
        sleep(2)

    
    when 3
        puts "-----------------------------------------"
        puts "#{nome_do_cliente},confira abaixo a sua tabuada..."
        puts "-----------------------------------------"
        tabuada_limpa()
        puts "-----------------------------------------"
    when 4
        saindo_do_programa()
    else
        puts "Essa alternativa é invalida..."
    end  
end