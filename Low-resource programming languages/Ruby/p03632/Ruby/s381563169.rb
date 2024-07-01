a, b, c, d = gets.split.map(&:to_i)
foo = b - c - a
puts foo > 0 ? foo : 0
