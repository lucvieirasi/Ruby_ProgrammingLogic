def menu
  puts "...................................................................."
  puts "                         Sistema de Matrícula                       "
  puts "...................................................................."
  puts "1 - Cadastrar aluno"
  puts "2- Cadastrar nota de aluno"
  puts "3 - Relatório de média dos alunos"
  puts "4 - Sair"
  puts "O que você deseja fazer?"
end

def nenhum_aluno_cadastrado
  puts "............................................"
  puts ".....ATENCAO!! ALUNO NAO ENCONTRADO........."
  puts "............................................"
  
end

def sair_do_programa
  puts "----------------------------------"
  puts "        Saindo do sistema         "
  puts "----------------------------------"
  puts Time.now
  sleep(3)
end

def cadastrar_aluno(alunos)
  aluno = {nome:"", matricula:"", notas:[]}
  puts "----- Voce selecionou a opçao 3 -----"
  puts "       CADASTRAR ALUNO         "
  puts "\nInforme o nome completo do aluno:"
  aluno[:nome]=gets
  puts "\nInforme a matrícula do aluno:"
  aluno[:matricula]=gets
  alunos << aluno
  puts "\n--------------------------------------------"
  puts "              Dados cadastrados              "
  puts "\n--------------------------------------------"
  puts "Nome completo: #{aluno[:nome]}"
  puts "Matrícula: #{aluno[:matricula]}"
  
end

def cadastrar_nota
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

  
end
def relatorio_do_aluno
  if alunos.length == 0
    nenhum_aluno_cadastrado()
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
  
end

opcao = 0
alunos = []

while opcao != 4 do
    menu()
    opcao = gets.to_i
  case opcao
  when 1
      cadastrar_aluno()
  when 2
    cadastrar_nota()
  when 3
    relatorio_do_aluno()  
  else
    system `clear`
    sair_do_programa()
    sleep(1)
  end
    sleep(2)
    system `clear`
end