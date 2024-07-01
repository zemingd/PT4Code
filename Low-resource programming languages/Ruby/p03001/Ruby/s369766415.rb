w, h, x, y = gets.strip.split.map(&:to_i)

flag = (w % 2 == 0) && (w / 2 == x) && (h % 2 == 0) && (h / 2 == y)

puts("#{w.to_f * h.to_f / 2} #{flag ? 1 : 0}")