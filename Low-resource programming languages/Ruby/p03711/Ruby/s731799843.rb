x, y = readline.chomp.split.map(&:to_i)
array = [0, 1, 3, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 12]
puts array[x] == array[y] ? "Yes" : "no"
