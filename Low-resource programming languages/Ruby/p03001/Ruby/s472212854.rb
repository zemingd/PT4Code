w, h, x, y = gets.split.map(&:to_i)
area = w * h / 2.0
multi = x * 2 == w && y * 2 == h ? 1 : 0
puts "#{area} #{multi}"
