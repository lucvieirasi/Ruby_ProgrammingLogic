puts "Olá querido cliente,qual o seu nome?"
nomeCliente = gets.to_s
puts "Seja bem vindo(a),#{nomeCliente}!"
puts "Atenção: Insira os dois números para soma..."
puts "Insira o primeiro número para cálculo:"
a = gets.to_i
puts "Insira o segundo número para cálculo:"
b = gets.to_i
resultadoSoma = a + b;
puts "#{nomeCliente},O resultado da operação de #{a} + #{b}, é:  #{resultadoSoma}"
