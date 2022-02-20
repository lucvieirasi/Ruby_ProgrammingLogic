
notas = []
em_aula = true
while em_aula do
    puts "Seja bem vindo ao Hamburgol,qual o seu nome?"
    nomeCliente = gets.to_s
    puts "#{nomeCliente} poderia participar da nossa pesquisa para melhoria do atendimento?"
    puts "Entre (1...10) qual nota indica ao seu atendimento?"
    nota = gets.to_f
    puts "Obrigado pela sua nota #{nomeCliente}!"
    sleep (5)
    system `clear`
    break if nota == -1
    notas << nota
end
puts "O seu NPS é de #{(notas.sum / notas.length)}"
    