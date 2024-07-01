x = gets.to_i
cnt = 1
x -= 1
cnt += x/11 * 2
if x % 11 > 5
	cnt += 1
end

puts cnt
