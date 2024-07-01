a, b = gets.split.map(&:to_i)
c = 0
(a..b).each do |i|
  s = i.to_s
  if s[0..1] == s[3..4].reverse
  	c += 1
end
puts c
