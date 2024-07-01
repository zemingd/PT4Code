n = gets.to_i
s = gets.split.map(&:to_i)
r = []
(1..n).each{|i| r << s.index(i) + 1}
puts r.join(" ")