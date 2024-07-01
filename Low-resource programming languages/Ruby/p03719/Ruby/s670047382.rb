a, b, c = gets.chomp.split(/ /).collect(&:to_i)
puts(a <= c && c <= b ? "Yes" : "No")