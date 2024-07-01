d, n = gets.chomp.split(' ').map(&:to_i)

i = 100**d
n = 101 if n==100
puts i*n
