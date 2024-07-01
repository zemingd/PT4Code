a = gets.chomp.split(" ").map(&:to_i).sort
k = gets.chomp.to_i

a[2] = a[2] * (2**k)

puts a.inject(:+)