a, b = readlines.map(&:to_i)
puts (a % 500) < b ? "Yes" : "No"