h, w = gets.chop.split.map(&:to_i)

puts h * (w / 2) if (w % 2) == 0
puts (h * (w / 2)) + ((h / 2) + (h % 2)) if (w % 2) == 1
