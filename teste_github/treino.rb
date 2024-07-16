#perguntar nome
print "Olá! Qual é o seu nome?"
print "digite seu nome:"
nome = gets.chomp
#perguntar senha
print "por favor insira sua senha:"
senha = gets.chomp
print " confirme sua senha por favor:"
confirme = gets.chomp
#conseder ou não acesso:
if confirme == senha
  print "Obrigado por se identificar: acesso liberado."
elsif confirme != senha
  print "senha incorreta"
end
#cadastrar um produto por vez
puts "o que você deseja fazer?"
puts "digite 1 para cadastrar produto"
puts "digite 2 para informar venda de produto"
puts "digite 3 para sair"
puts "digite o número correspondente a sua escolha"
  escolha = gets.chomp.to_i
  case escolha
  when 1
    puts "ótimo vamos lá"
  when 2
    puts " quem bom vamos dar baixa"
  when 3
    puts "ok até logo!"
  when 4..9999999999999999
    puts "opção inexistente"
  else
    puts 'não pude identificar essa informação'
  end
#perguntar a quantidade  existente do produto

if escolha == 1
  print "qual o produto você deseja cadastrar?"
  produto_novo = gets.chomp
elsif escolha == 2
  print "qual produto foi vendido?"
  produto_vend = gets.chomp
elsif escolha == 3
  break
end
#cadastrar o produto e valor do produto
 produtos = []

print "Digite o nome do produto :"
produto = gets.chomp
produtos.push(produto)

print "digite o valor  que você pagor pelo produto: "
valor = gets.chomp.to_i
produtos.push(valor)
valor_venda = valor * 0.70
valor_desconto = valor * 0.45
produtos = produto : valor_venda and valor_desconto

  puts "O produto #{produto} deve ser vendido por#{valor_venda} ou pode ser vendido com desconto por#{valor_desconto}"
end

#cadastrar a porcentagem para revenda
#dar o valor de revenda
#dar a estrategia :preço minimo e máximo de revenda
#dar baixa em produtos vendidos,diminuindo a quantidade no estoque
# contabilizar quanto entrou e quanto saiu de dinheiro,separando por formas de pagamento:ex: fiado,cartão,dinheiro,pix
