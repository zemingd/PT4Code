id = [0, 2, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0]
x, y = gets.chomp.split(/ /).collect(&:to_i)
puts(id[x - 1] == id[y - 1] ? "Yes" : "No")