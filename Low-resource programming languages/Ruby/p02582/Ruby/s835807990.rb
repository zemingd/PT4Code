#整数一文字の場合
s = gets.to_s.chomp

ans = 0
ans = s.scan("R").length

if s == "RSR" then
	ans = 1
end

puts ans