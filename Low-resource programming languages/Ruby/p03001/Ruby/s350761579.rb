w, h, x, y = gets.strip.split(" ").map(&:to_i)

half = h / 2.0
f =
  if y >= half
    (w / 2.0) * h
  else
    (h / 2.0) * w
  end

s = 
  if x == (w / 2) && y == (h / 2)
    1
  else
    0
  end

puts "#{f} #{s}"
