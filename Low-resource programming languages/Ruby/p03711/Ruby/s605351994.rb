a = [0, 1, 3, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1]
x, y = gets.chomp.split(" ").map(&:to_i)
puts a[x] == a[y] ? "Yes" : "No"