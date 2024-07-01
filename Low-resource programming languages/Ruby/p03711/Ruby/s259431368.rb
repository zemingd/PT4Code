X, Y = gets.split.map(&:to_i)
G = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]

A = G.map{|a| a.include?(X)}
B = G.map{|a| a.include?(Y)}

puts A == B ? "Yes" : "No"