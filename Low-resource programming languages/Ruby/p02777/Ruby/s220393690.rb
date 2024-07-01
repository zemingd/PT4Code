s, t  = gets.split(" ").map(&:to_s)
a, b = gets.split(" ").map(&:to_i)
u = gets.chomp!

hs = { s => a, t => b }
hs[u] -= 1

print("#{hs[0]} #{hs[1]}\n")