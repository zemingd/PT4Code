A, V =gets.split.map(&:to_i)
B, W =gets.split.map(&:to_i)
T = gets.to_i

if V <= W
	puts "NO"
else
	dis = (A - B).abs
	per = V - W
	
	if dis / per <= T
		puts "YES"
	else
		puts "NO"
	end
end