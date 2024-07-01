gets.to_i.times {
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  puts (y2 - y1) / (x2 - x1) == (x4 - x3) / (y4 - y3) ? 'YES' : 'NO'
}