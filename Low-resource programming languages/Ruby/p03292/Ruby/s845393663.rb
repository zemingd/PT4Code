a, b, c = gets.split(' ').map(&:to_i).sort!

puts (a - b).abs + (b - c).abs
