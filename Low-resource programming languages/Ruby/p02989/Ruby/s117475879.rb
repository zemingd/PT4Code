N = gets.chomp.to_i
D = gets.chomp.split(' ').map(&:to_i)

n = D.size / 2
a, b = D.sort[(n-1)..n]
puts ((a+1)..b).size
