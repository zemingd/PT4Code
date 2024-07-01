a = gets.to_i
b = gets.to_i

answers = [1, 2, 3]
answers.delete(a)
answers.delete(b)

puts answers.first
