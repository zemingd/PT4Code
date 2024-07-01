a, b, c = gets.strip.split.map(&:to_i).sort
puts (a - b).abs + (b - c).abs
