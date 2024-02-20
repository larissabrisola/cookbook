

INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3


puts "Seja bem vindo ao CookBook!"

def menu()
    puts ""
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"
    
    print "Escolha uma opção: "
end

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    
    puts
    puts "Receita #{nome} cadastrada com sucesso"
    return { nome: nome, tipo: tipo }
end

def imprimir_receitas(receitas)
    puts "____________________________________"
    puts
    puts "Receitas cadastradas: "
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]} "
    end
        if receitas.empty?
            puts "Nenhuma receita cadastrada"
        end
end

receitas = []

menu()
opcao = gets.to_i()

loop do 
    if opcao == INSERIR_RECEITA
        receitas << inserir_receita()
    elsif opcao == VISUALIZAR_RECEITAS
        imprimir_receitas(receitas)
    elsif(opcao == SAIR)
        break
    else 
        puts "Opção inválida"
    end
    
    puts "____________________________________"
    menu()
    opcao = gets.to_i()
end

puts ""
puts "Obrigada por utilizar o CookBook, até logo!"
puts ""


=begin
notes
/
 METODO "EACH" ABAIXO
receitas.each do |receita|
    puts receita
end
/
 METODO "FOR" NÃO É UTILIZADO EM RUBY e sim o "EACH" (mas são iguais por tras dos panos)
 for receita in receitas do 
    puts receita
end
/

Constante em ruby precisa estar toda uppercase (eh placebo )
/


to-do: 
[] adicionar opcao de buscar receitas

=end



