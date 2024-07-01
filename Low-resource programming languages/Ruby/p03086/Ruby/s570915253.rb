t = gets.chomp
max = 0;
t.size.times do |i|
	temp = t[i..-1].match(/[ATCG]+/).to_s.size
	max = temp if temp > max
end
t.size.times do |i|
	temp = t[0..-(i+1)].match(/[ATCG]+/).to_s.size
	max = temp if temp > max
end

puts max