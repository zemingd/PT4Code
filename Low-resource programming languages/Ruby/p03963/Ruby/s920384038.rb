input = gets.split("\s").map(&:to_i)
n = input[0]
k = input[1]

puts k * ((k-1)**(n-1))