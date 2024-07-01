a, b = gets.split.map(&:to_i)
ret = 0
for i in a..b
  ret += 1 if i.to_s == i.to_s.reverse
end
puts ret
