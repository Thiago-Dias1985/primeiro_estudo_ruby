#Crie uma collection do tipo Hash e permita que o usuário crie três elementos
#informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase
#“Uma das chaves é **** e o seu valor é ****”
estoque = {}
puts "diga qual é a marca de camisetas que você procura:"
produto_1 = gets.chomp
puts "agora informe o tamanho da camiseta"
tamanho_1 = gets.chomp
print "analizamos o estoque:"
puts "diga qual é a marca de calça jeans que você procura:"
produto_2 = gets.chomp
puts "agora informe o tamanho da calça jeans"
tamanho_2 = gets.chomp.to_i
print "analizamos nosso estoque:"
puts "diga qual a marca de tênis ,ou sapatos que voê deseja:"
produto_3 = gets.chomp
puts "agora informe o tamanho de sapatos que você usa:"
tamanho_3 = gets.chomp.to_i
estoque = {produto_1 => tamanho_1, produto_2 => tamanho_2 ,produto_3 => tamanho_3}
estoque.each do |key, value|
 puts "o produto celecionado foi,#{key} e o tamanho é ,#{value}"
end
