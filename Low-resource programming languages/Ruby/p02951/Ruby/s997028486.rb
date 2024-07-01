a, b, c = gets.chomp.split.map(&:to_i)

puts [(a - b - c).abs, 0].max
