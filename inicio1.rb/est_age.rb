result = ''
loop do
  puts result
  puts 'vamos descobrir sua idade?'
  puts 'escolha uma das opções a seguir:'
  puts '1 para sim ou 0 para não'
  print 'opção:'
  option = gets.chomp.to_i
  if option == 1
    print 'digite o ano de nascimento:'
    year_of_birt = gets.chomp.to_i
    print ' digite o ano atrual'
    current_year = gets.chomp.to_i
    age = current_year - year_of_birt
    result = "quem nasceu no ano de, #{year_of_birt} tem #{age} anos de idade em #{current_year}."
  elsif option == 0
    break if option ==0
  else
    result = 'opção inválida'
  end
  system 'clear'
end
