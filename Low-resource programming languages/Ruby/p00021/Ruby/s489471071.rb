gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  puts((y1 - y2) * (x3 - x4) - (y3 - y4) * (x1 - x2) == 0 ? "YES" : "NO")
end