k = gets.to_i
a, b = gets.split.map(&:to_i)
m = a % k
if m == 0 || a + k - m <= b
	puts "OK"
else puts "NG"
end