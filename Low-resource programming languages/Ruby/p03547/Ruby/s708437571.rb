a, b = readline.split.map(&:chomp)
puts a.to_i(16) > b.to_i(16) ? ">" : "<"