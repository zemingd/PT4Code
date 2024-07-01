a = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i

a.sort!
a[2] = k * 2

puts a.inject(:+)