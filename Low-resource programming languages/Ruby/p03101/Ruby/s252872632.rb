G = gets.split(" ").map(&:to_i)
g = gets.split(" ").map(&:to_i)
puts G[0]*G[1] - G[0]*g[1] - g[0]*G[1] + g[0]*g[1]