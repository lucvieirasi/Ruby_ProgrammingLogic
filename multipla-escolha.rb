puts "Seja bem vindo ao Frutaria, qual o seu nome?"
puts "----------------------------"
nomeCliente = gets.to_s
system `clear`
puts "#{nomeCliente} temos as seguintes frutas... banana,maça e laranja!"
puts "----------------------------"
puts "Insira o número correspondente a escolha? (1) Banana (2) Maça (3) Laranja & (0) Sair "
puts "----------------------------"

escolha_fruta = gets.to_i

case escolha_fruta
    when escolha_fruta == 1
        puts "#{nomeCliente} o valor a banana é R$ 11 reais!"
    when escolha_fruta == 2
        puts "#{nomeCliente} o valor a maça é R$ 5 reais!"
    when escolha_fruta == 3
        puts "#{nomeCliente} o valor a laranja é R$ 8 reais!"
    when escolha_fruta == 0
        puts "Até mais #{nomeCliente} volte sempre!"
    else
        puts "Nao compreendi a sua escolha..."
end