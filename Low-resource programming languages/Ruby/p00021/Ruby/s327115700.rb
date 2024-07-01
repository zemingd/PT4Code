n = gets.chomp.to_i

n.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.chomp.split.map(&:to_f)
  a = (y2 - y1) / (x2 - x1) rescue Float::INFINITY
  b = (y4 - y3) / (x4 - x3) rescue Float::INFINITY
  puts a == b ? 'YES' : 'NO'
end