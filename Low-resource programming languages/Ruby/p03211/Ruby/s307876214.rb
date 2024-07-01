s = gets
ans = 753

(s.size-2).times do |i|
	ans = [ans,(753 - s[i,3].to_i).abs].min
end

puts ans