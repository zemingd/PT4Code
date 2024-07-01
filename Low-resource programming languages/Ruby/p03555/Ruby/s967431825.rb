a, b = readlines.map(&:chomp)
puts a == b.reverse ? "YES" : "NO"