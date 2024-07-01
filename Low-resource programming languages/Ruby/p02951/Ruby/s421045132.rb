input = gets
a, b, c = input.split.map(&:to_i)
puts c - (a - b)
