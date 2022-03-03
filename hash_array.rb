require 'byebug'

loop do
    puts "Bem vindo ao Gerenciamento Estudantil"
    puts "Digite (1) - Cadastrar Alunos/Notas ou (0) - Sair"
    valor = gets.to_i
break if(valor == 0)

# ARRAY 
matriculas = []
  alunos = {}

# Primeira matrícula
  puts "Vamos registrar o primeiro aluno!"
  sleep(3)
  system `clear`

  puts "Qual o nome do aluno?"
  alunos[:nome_aluno1] = gets.to_s.delete("\n")

  puts "Insira um número de matrícula para o aluno: #{alunos[:nome_aluno1]}:"
  alunos[:matricula_aluno1] = gets.to_i

  puts "Insira a nota do primeiro semestre do aluno: #{alunos[:nome_aluno1]}"
  alunos[:nota1_aluno1] = gets.to_i

  puts "Insira a nota do primeiro segundo do aluno: #{alunos[:nome_aluno1]}!"
  alunos[:nota2_aluno1] = gets.to_i

  puts "Insira a nota do primeiro terceiro do aluno: #{alunos[:nome_aluno1]}!"
  alunos[:nota3_aluno1] = gets.to_i

  puts "Insira a nota do primeiro quarto do aluno: #{alunos[:nome_aluno1]}!" 
  alunos[:nota4_aluno1] = gets.to_i

  system `clear`  
  puts "Matriculando o aluno #{alunos[:nome_aluno1]}..."
  sleep (5)
  system `clear`
  puts "Aluno #{alunos[:nome_aluno1]}, foi matriculado com sucesso! "
  matriculas << alunos

 system `clear`
    matriculas.each do |alunos|
  puts "---- Relatório de Matrícula  -----}"
  puts "Nome: #{alunos[:nome_aluno1]}" 
  puts "Matrícula: #{alunos[:matricula_aluno1]}"
  puts "Notas: #{alunos[:nota1_aluno1]},#{alunos[:nota2_aluno1]},#{alunos[:nota3_aluno1]},#{alunos[:nota4_aluno1]}"
  media = alunos[:nota1_aluno1] + alunos[:nota2_aluno1] + alunos[:nota3_aluno1] + alunos[:nota4_aluno1]
  resultado_media = media / 4
  puts "A média do aluno é: #{resultado_media}." 

  
end
end