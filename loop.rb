notas = []
em_aula = true
while em_aula do
    puts "Aula sobre desenvolvimento e novas tecnologia... poderia dar uma nota? (1...10)"
    notas << gets.to_f
    puts "A aula já terminou? (S - Sim / N - Nao)"
    em_aula = gets.upcase.strip != "S"
end
puts "O seu NPS é de #{(notas.sum / notas.length)}"