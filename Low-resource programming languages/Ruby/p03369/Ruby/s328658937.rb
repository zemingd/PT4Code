ans = 700

gets.each_char do |x|
	ans += 100 if x == "o"
end

print ans
