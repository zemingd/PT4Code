a,b,c,k = gets.chomp.split(" ").map(&:to_i);
if a > k
	ans = k
	elsif a <= k && a + b >= k
		ans = a * 1
	else
		ans = a*1 - (k-a-b)*1
	end

puts ans