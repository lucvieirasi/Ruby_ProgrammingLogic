##require 'active_support'
notas = []
em_aula = true
data_encerramento = Time.now + 60
# Loop com a tentativa de dar prosseguimento ao NPS.
while Time.now < data_encerramento do
    puts "Bem vindo a FutBurguer,qual o seu nome?"
        nomeCliente = gets.to_s
    puts "#{nomeCliente} poderia participar da nossa pesquisa para melhoria do atendimento?"
    puts "Entre (1...5) qual nota indica ao seu atendimento?"
     
    possiveis_notas = [1,2,3,4,5,989]
    nota = gets.to_f
# Condiçao para validaçao da nota introduzida.
    if nota > 0 && nota < 6
        puts "Obrigado pela sua nota #{nomeCliente}!"
    elsif nota
        puts " O conteúdo digitado não corresponde a nota,#{nomeCliente}!"   
    end  
    notas << nota    
    if data_encerramento > Time.now 
    puts "A pesquisa irá se encerrar em: #{Time.at((data_encerramento - Time.now)).strftime("%M:%S")}"
    else 
        puts "A pesquisa está encerrada #{nomeCliente}!"
    end       
    sleep (3)
    system `clear`

end
puts "-------- Resultado NPS FutBurguer-----------"
puts "O seu NPS é de #{(notas.sum / notas.length)}"
puts "--------------------------------------------"
puts "O número de clientes que votou foi - #{notas.length} votos.."
puts "--------------------------------------------"
    