a, b, c, d = readline.chomp.split.map(&:to_i)
puts a-b.abs <= 3 && b-c.abs <= 3 || a-c.abs <= d ? "Yes" : "No"