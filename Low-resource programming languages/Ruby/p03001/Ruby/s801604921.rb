w, h, x, y = gets.split.map(&:to_i)
max = [(w - x) * h, (h - y) * x].max
multi = x * 2 == w && y * 2 == h ? 1 : 0
puts "#{max} #{multi}"
