a, b = gets.split.map(&:to_i)

ret = 0
(a..b).each do |i|
  ret += 1 if i.to_s == i.to_s.reverse
end
puts ret
