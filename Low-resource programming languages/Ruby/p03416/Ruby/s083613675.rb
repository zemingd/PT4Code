a,b = gets.split.map &:to_i
cnt = 0
(a..b).each do |i|
  cnt += 1 if i.to_s == i.to_s.reverse
end
puts cnt