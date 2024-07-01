w, h, x, y = gets.chomp.split.map(&:to_f)
is_unique = if x * 2.0 == w && y * 2.0 == h then 1 else 0 end
puts "%.10f %d" % [(w * h) / 2.0, is_unique]