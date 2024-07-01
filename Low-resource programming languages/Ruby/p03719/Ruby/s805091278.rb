a, b, c = gets.chomp.split.map(&:to_i)
puts (a <= c) && (b >= c) ? "Yes" : "No"