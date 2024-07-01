r, g, b = gets.chomp.split
i = (r + g + b).to_i
puts i % 4 == 0 ? "YES" : "NO"
