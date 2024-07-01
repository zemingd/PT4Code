x = gets.to_i
a = [false]*102
gets.split.each do |s|
  a[s.to_i] = true
end
mi = Float::INFINITY
ans = p
(0...102).each do |i|
  next if a[i]
  b = (x-i).abs
  next if mi <= b
  mi = b
  ans = i
end
p ans
