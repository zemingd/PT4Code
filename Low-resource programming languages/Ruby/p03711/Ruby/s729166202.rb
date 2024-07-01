X, Y = gets.split.map(&:to_i)

G = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]
puts G.index{|a| a.member?(X)} == G.index{|a| a.member?(Y)} ? 'Yes' : 'No'