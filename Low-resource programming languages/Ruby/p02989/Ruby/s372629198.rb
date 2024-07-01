N = gets.to_i
D = gets.split(" ").map(&:to_i)
D.sort!

a = D[N/2 - 1]
b = D[N/2]
ans = b - a
puts ans
