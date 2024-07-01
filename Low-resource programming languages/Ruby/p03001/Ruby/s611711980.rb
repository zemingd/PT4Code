w, h, x, y = gets.split(" ").map(&:to_i)

area = w * h
half_area = area.fdiv(2)

cut = 
  if w == h || (w < h && y == h.fdiv(2)) || (h < w && x == w.fdiv(2))
    1
  else
    0
  end

puts "#{half_area} #{cut}"