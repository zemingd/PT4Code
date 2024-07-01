A, V =gets.split.map(&:to_i)
B, W =gets.split.map(&:to_i)
T = gets.to_i

if V <= W
	puts "NO"
else
	dis = (A - B).abs * 1.0
	per = V - W
	ans = dis / per
	if ans <= T
		puts "YES"
	else
		puts "NO"
	end
end