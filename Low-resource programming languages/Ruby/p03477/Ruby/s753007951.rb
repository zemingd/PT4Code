a, b, c, d = $stdin.read.split.map(&:to_i)
puts "Left" if a + b > c + d
puts "Right" if a + b < c + d
puts "Balanced" if a + b == c + d
