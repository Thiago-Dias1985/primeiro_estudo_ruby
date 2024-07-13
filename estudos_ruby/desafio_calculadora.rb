resultado = ''
loop do
 puts resultado
 puts 'Escolha uma opção'
 puts '1- Adição'
 puts '2- Subtração'
 puts '3- Multiplicação'
 puts '4- Divisão'
 puts '0- Sair'
 print 'escolha: '
 opcao = gets.chomp.to_i
 case opcao
 when 1..4
   print 'Digite o primeiro número: '
   num_1 = gets.chomp.to_i

   print 'Digite o segundo número: '
   num_2 = gets.chomp.to_i
   case opcao
   when 1
     resultado = "#{num_1} + #{num_2} = #{num_1 + num_2}"
   when 2
     resultado = "#{num_1} - #{num_2} = #{num_1 - num_2}"
   when 3
     resultado = "#{num_1} * #{num_2} = #{num_1 * num_2}"
   when 4
     resultado = "#{num_1} / #{num_2} = #{num_1 / num_2}"
   end
 when 0
   break
 else
   result = 'Não entendi ,vamos tentar novamente?!!'
 end

 system "clear"
end
