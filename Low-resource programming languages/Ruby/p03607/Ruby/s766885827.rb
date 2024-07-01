n = gets.chomp.to_i

ns = {}
flip = [-1, 1]
total = 0

n.times do
  a = gets.chomp.to_i
  ns[a] = ((ns[a] || 0) + 1) % 2
  total += flip[ns[a]]
end

puts total