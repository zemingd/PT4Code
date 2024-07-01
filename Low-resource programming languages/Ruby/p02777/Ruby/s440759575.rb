s, t = gets.chomp.split
num1, num2 = gets.chomp.split.map(&:to_i)
u = gets.chomp

puts u == s ? "#{(num1 - 1)} #{num2}" : "#{(num2 - 1)} #{num1}"