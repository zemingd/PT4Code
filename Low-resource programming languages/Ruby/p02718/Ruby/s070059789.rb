N,M = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
sum = a.inject(:+)/(4.0*M)
a = a.sort.reverse
puts a[0..M-1].select{ |i| i >= sum}.length == M ? "Yes" : "No"
