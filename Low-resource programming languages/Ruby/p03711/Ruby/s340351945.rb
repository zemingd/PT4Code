d = [3, 0, 1, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0]
x, y = gets.chomp.split.map(&:to_i)
puts d[x] == d[y] ? 'Yes' : 'No' 