def autenticar_usuario
  print "Olá! Qual é o seu nome? "
  nome = gets.chomp
  print "Por favor, insira sua senha: "
  senha = gets.chomp
  print "Confirme sua senha, por favor: "
  confirme = gets.chomp

  if confirme == senha
    puts "Obrigado por se identificar, #{nome}. Acesso liberado."
    return true
  else
    puts "Senha incorreta. Acesso negado."
    return false
  end
end

def cadastrar_produto(produtos)
  print "Digite o nome do produto: "
  nome = gets.chomp
  print "Digite o valor que você pagou pelo produto: "
  valor_compra = gets.chomp.to_f
  print "Digite a porcentagem de lucro para revenda (exemplo: 70 para 70%): "
  porcentagem_lucro = gets.chomp.to_f / 100

  valor_venda = valor_compra * (1 + porcentagem_lucro)
  valor_desconto = valor_venda * 0.85

  produtos[nome] = { valor_compra: valor_compra, valor_venda: valor_venda, valor_desconto: valor_desconto }

  puts "O produto #{nome} foi cadastrado com sucesso."
  puts "Preço de compra: R$ #{valor_compra}"
  puts "Preço de revenda: R$ #{valor_venda}"
  puts "Preço com desconto: R$ #{valor_desconto}"
end

def listar_produtos(produtos)
  puts "Lista de produtos:"
  produtos.each do |nome, info|
    puts "Produto: #{nome}"
    puts "Preço de compra: R$ #{info[:valor_compra]}"
    puts "Preço de revenda: R$ #{info[:valor_venda]}"
    puts "Preço com desconto: R$ #{info[:valor_desconto]}"
    puts "-" * 30
  end
end

# Programa principal
produtos = {}

if autenticar_usuario
  loop do
    puts "O que você deseja fazer?"
    puts "1. Cadastrar produto"
    puts "2. Listar produtos"
    puts "3. Sair"
    print "Digite o número correspondente à sua escolha: "
    escolha = gets.chomp.to_i

    case escolha
    when 1
      cadastrar_produto(produtos)
    when 2
      listar_produtos(produtos)
    when 3
      puts "Ok, até logo!"
      break
    else
      puts "Opção inexistente."
    end
  end
end
