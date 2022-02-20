
system `clear`
# debugger
puts "Olá João, tudo bem?\nVamos fazer o pedido do seu cliente?"

puts "Digite o nome do seu cliente: "
nome_cliente = gets.to_s.strip

puts "Digite o nome do produto: "
nome_produto1 = gets.to_s.strip

puts "Digite o valor do produto #{nome_produto1}: "
valor_produto1 = gets.to_f



system `clear`
puts "Olá #{nome_cliente},você gostaria de incluir mais um item em seu pedido? se fizer isso vou aumentar o desconto... (S/N)"
vai_adicionar_produto_a_mais = gets.to_s.upcase.strip == "S"


valor_total = valor_produto1 
porcentagem_desconto = 0
if vai_adicionar_produto_a_mais
    puts "Muito bem, #{nome_cliente}, qual o nome do novo produto que você deseja incluir?"
    nome_produto2 = gets.to_s.strip

    puts "Digite o valor do produto #{nome_produto2}: "
    valor_produto2 = gets.to_f
    
    puts "Perfeito #{nome_cliente}, or você ter adicionado um produto a mais você ganhará mais desconto"
    porcentagem_desconto += 1

    valor_total = (valor_produto1 + valor_produto2) 
end    



puts "Olá João, já temos #{porcentagem_desconto}% de desconto, você deseja acrescentar mais desconto? caso não digite 0."
porcentagem_desconto += gets.to_f

valor_do_desconto = valor_total * porcentagem_desconto / 100
valor_total_descontado = valor_total - valor_do_desconto

system `clear`
puts "----- Nota de Compra| Cliente: #{nome_cliente} -----"
puts "+------------------------+"
puts "Itens: "
puts " - #{nome_produto1} : R$ #{valor_produto1}"
if vai_adicionar_produto_a_mais
    puts " - #{nome_produto2} : R$ #{valor_produto2}"
end
puts "+------------------------+"
puts "A porcentagem de desconto total foi de: #{porcentagem_desconto}%"
puts "+------------------------+"
puts "O valor do desconto foi: #{valor_do_desconto} reais..."
puts "+------------------------+"
puts "O valor total: R$ #{valor_total_descontado} reais..."
puts "+------------------------+"


