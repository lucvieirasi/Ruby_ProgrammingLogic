opcao = 0
alunos = []

while opcao != 4 do
  puts "...................................................................."
  puts "Sistema de Cadastro Estudantil -  Escolha uma das opçoes disponíveis"
  puts "...................................................................."
  puts "1 - Cadastrar aluno"
  puts "2- Cadastrar nota de aluno"
  puts "3 - Relatório de média dos alunos"
  puts "4 - Sair"

  opcao = gets.to_i


  case opcao
  when 1
    aluno = {nome:"", matricula:"", notas:[]}
    puts "Informe o nome do aluno"
    aluno[:nome]=gets
    puts "Informe a matricula do aluno (0000)"
    aluno[:matricula]=gets
    aluno[:notas] = []
    alunos << aluno

  when 2
    puts "Digite a matrícula do aluno"
    matricula = gets
    aluno_encontrado = false
    alunos.each do |a|
      if a[:matricula] == matricula
        aluno_encontrado = true
        puts "\nInforme a nota do aluno:"
        nota=gets.to_f
        if nota < 0 or nota > 10
          puts "Nota Inválida, a nota deve ser entre 0 e 10."
          break
        else
          a[:notas] << nota

          break
        end
        system `clear`
        puts "............................................"
        puts "||||ALUNO NAO ENCONTRADO||||" unless aluno_encontrado
        puts "............................................"
      end
end
      when 3
      if alunos.length == 0
        puts "............................................"
        puts "||||ATENCAO!! ALUNO NAO ENCONTRADO|||||"
        puts "............................................"
      else
        alunos.each do |a|
          puts "............................................"
          puts "|||Matrícula: #{aluno[:matricula]}|||"
          puts "|||Nome do aluno: #{aluno[:nome]}||||"
          if aluno[:notas].length > 0
            puts "||Notas: #{aluno[:notas].join(", ")}||"
            puts "||Média: #{(aluno[:notas].sum.to_f / aluno[:notas].length.to_f)}||"
          else
            puts "............................................"
            puts "|||Aluno sem notas para avaliacao|||"
            puts "............................................"
          end
        end
      end
    else
      system `clear`
      puts "Saindo do sistema..."
      sleep(1)
    end
    sleep(2)
end