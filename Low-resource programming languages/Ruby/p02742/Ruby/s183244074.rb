h, w = gets.chop.split.map(&:to_i)

puts ((h / 2) * w) if (h % 2) == 0
puts (((h / 2) * w) + ((w / 2) + (w % 2))) if (h % 2) == 1
