n = 0
a, b = gets.split.map(&:to_i)
(a..b).each do |x|
  if x.to_s == x.to_s.reverse
      n += 1
  end
end
p n