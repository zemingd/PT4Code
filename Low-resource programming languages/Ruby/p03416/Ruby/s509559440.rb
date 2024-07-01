a , b = gets.split.map(&:to_i)
ans = 0

(a..b).each do |i|
	ans += 1 if i.to_s == i.to_s.reverse
end

puts ans