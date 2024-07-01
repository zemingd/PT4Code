A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i
puts T*W+B < T*V+A ? "YES" : "NO"
