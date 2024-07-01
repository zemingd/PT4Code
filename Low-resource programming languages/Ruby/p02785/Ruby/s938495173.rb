n,k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
h.sort!.reverse!
h.push(0)
sum = 0
(n-k+1).times do|i|
  sum += h[k+i]
end
p sum