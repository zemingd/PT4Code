n = gets.chomp.to_i
a = 100

n.times { a = (a * 1.05).ceil }

puts a * 1000