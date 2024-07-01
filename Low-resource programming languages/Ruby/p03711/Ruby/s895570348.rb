x, y = gets.chomp.split.map(&:to_i)
l = [nil, 1, 8, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1]
puts l[x] == l[y] ? "Yes" : "No"
