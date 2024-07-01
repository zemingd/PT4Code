a, b, c, d = gets.split.map &:to_i
puts %w(Left Balanced Right)[1 + (c+d <=> a+b)]