a = gets.chomp!.split(" ").map(&:to_i)
k = gets.chomp!.to_i

a[a.index(a.max)] = a[a.index(a.max)] * k * 2

puts a.inject(:+)