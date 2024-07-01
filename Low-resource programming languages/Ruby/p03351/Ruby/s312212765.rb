a, b, c, d = readline.chomp.split.map(&:to_i)
puts a-b.abs <= d && b-c.abs <= d || a-c.abs <= d ? "Yes" : "No"