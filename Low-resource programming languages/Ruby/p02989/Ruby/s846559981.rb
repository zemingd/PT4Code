N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

D.sort!

puts (D[N/2] - D[N/2-1])