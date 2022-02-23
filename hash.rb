require 'byebug'

loop do
puts "Bem vindo ao FacuTech Gerenciamento!"
puts "Digite 0 para sair ou 1 para continuar"

valor = gets.to_i

break if(valor == 0)


# ARRAY MATERIA
curso = []
  materias = {}

# Primeira materia
  puts "Digite o nome da primeira materia!"
  materias[:nome_primeira_materia] = gets.delete("\n")

  puts "Digite o tema da primeira materia!"
  materias[:primeiro_tema] = gets.delete("\n")

  puts "Digite o tema da segunda materia!"
  materias[:segundo_tema] = gets.delete("\n")

  puts "Digite o tema da terceira materia!"
  materias[:terceiro_tema] = gets.delete("\n")

  puts "Digite o tema da quarta materia!"
  materias[:quarto_tema] = gets.delete("\n")

  puts "Digite o tema da quinta materia!"
  materias[:quinto_tema] = gets.delete("\n")

  puts "Digite o tema da sexta materia!"
  materias[:sexto_tema] = gets.delete("\n")

  puts "Agora iremos para a segunda materia..."
  sleep (5)
  system `clear`
# Segunda Materia
puts "Digite o nome da segunda materia!"
materias[:nome_segunda_materia] = gets.delete("\n")

puts "Digite o tema da primeira materia!"
materias[:primeiro_tema_segundamateria] = gets.delete("\n")

puts "Digite o tema da segunda materia!"
materias[:segundo_tema_segundamateria] = gets.delete("\n")

puts "Digite o tema da terceira materia!"
materias[:terceiro_tema_segundamateria] = gets.delete("\n")

puts "Digite o tema da quarta materia!"
materias[:quarto_tema_segundamateria] = gets.delete("\n")

puts "Digite o tema da quinta materia!"
materias[:quinto_tema_segundamateria] = gets.delete("\n")

puts "Digite o tema da sexta materia!"
materias[:sexto_tema_segundamateria] = gets.delete("\n")

# Terceira materia
puts "Agora iremos para a terceira materia..."
  sleep (5)
  system `clear`
puts "Digite o nome da terceira materia!"
materias[:nome_terceira_materia] = gets.delete("\n")

puts "Digite o tema da primeira materia!"
materias[:primeiro_tema_terceiramateria] = gets.delete("\n")

puts "Digite o tema da segunda materia!"
materias[:segundo_tema_terceiramateria] = gets.delete("\n")

puts "Digite o tema da terceira materia!"
materias[:terceiro_tema_terceiramateria] = gets.delete("\n")

puts "Digite o tema da quarta materia!"
materias[:quarto_tema_terceiramateria] = gets.delete("\n")

puts "Digite o tema da quinta materia!"
materias[:quinto_tema_terceiramateria] = gets.delete("\n")

puts "Digite o tema da sexta materia!"
materias[:sexto_tema_terceiramateria] = gets.delete("\n")

  curso << materias
system `clear`
curso.each do |materias|
  puts "---- G R A D E    DA   FACUTECH 2022  -----}"
  puts "Materia: #{materias[:nome_primeira_materia]}, Grade - Materias: #{materias[:primeiro_tema]}, #{materias[:segundo_tema]},#{materias[:terceiro_tema]},#{materias[:quarto_tema]},#{materias[:quinto_tema]},#{materias[:sexto_tema]}"
  puts "Materia: #{materias[:nome_segunda_materia]}, Grade - Materias: #{materias[:primeiro_tema_segundamateria]},#{materias[:segundo_tema_segundamateria]}, #{materias[:terceiro_tema_segundamateria]},#{materias[:quarto_tema_segundamateria]},#{materias[:quinto_tema_segundamateria]},#{materias[:sexto_tema_segundamateria]}"
  puts "Materia: #{materias[:nome_terceira_materia]}, Grade - Materias: #{materias[:primeiro_tema_terceiramateria]},#{materias[:segundo_tema_terceiramateria]}, #{materias[:terceiro_tema_terceiramateria]},#{materias[:quarto_tema_terceiramateria]},#{materias[:quinto_tema_terceiramateria]},#{materias[:sexto_tema_terceiramateria]}"
end
end