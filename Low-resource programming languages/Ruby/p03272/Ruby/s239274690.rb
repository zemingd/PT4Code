input = gets.chomp.split(" ").map(&:to_i)
n,i = input[0], input[1]

x = n - i + 1

puts x
