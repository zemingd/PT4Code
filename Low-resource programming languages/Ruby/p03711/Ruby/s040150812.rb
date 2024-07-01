G = [0, 1, 3, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1]
x, y = gets.split.map{|i|i.to_i}
puts (G[x] == G[y] ? "Yes" : "No")
