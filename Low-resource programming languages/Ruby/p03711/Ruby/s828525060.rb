g = [nil, 0, 2, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0]
x, y = gets.chomp.split.map(&:to_i)
puts g[x] == g[y] ? 'Yes' : 'No'