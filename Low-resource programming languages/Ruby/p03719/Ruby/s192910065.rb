a, b, c = readline.chomp.split.map(&:to_i)
puts a < c && c < b ? "YES" : "NO"