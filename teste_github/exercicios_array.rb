
# Utilizando uma collection do tipo Array, escreva um programa que receba
# 3 números e no final exiba o resultado de cada um deles elevado à segunda potência.

numbers = []

print "Digite o primeiro número: "
num_1 = gets.chomp.to_i
numbers.push(num_1)

print "Digite o segundo número: "
num_2 = gets.chomp.to_i
numbers.push(num_2)

print "Digite o terceiro número: "
num_3 = gets.chomp.to_i
numbers.push(num_3)
results = numbers.map { |num| num ** 3 }
results.each_with_index do |result, index|
  puts "O resultado do número #{index + 1} elevado ao quadrado é: #{result}"
end
