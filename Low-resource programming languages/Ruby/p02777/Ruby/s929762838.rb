s,t = gets.chomp.split(' ')
a,b = gets.chomp.split(' ').map(&:to_i)
h = {}
h[s] = a
h[t] = b
u = gets.chomp
h[u] -= 1
puts h.values.join(' ')