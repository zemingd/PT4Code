array = gets.chomp.split(' ').map(&:to_i)
k = gets.to_i

max = array.max

puts array.reduce(:+) - max + max * (2 ** k)