N = gets.to_i
P = gets.split(' ').map(&:to_i)
P.sort!()
n = N / 2
puts P[n] - P[n-1]