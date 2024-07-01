w, h, x, y = gets.split.map(&:to_f)
mul = x == w/2 && y == h/2
puts [(w * h) / 2, mul ? 1 : 0].join(" ")