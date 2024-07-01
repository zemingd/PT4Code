w, h, x, y = gets.split.map(&:to_i)
puts ((w * h).to_f / 2.0).to_s + " " + (x * 2 == w && y * 2 == h ? "1" : "0")
