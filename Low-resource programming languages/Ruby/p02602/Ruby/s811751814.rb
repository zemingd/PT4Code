a = []
ans = []
n,k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

n.times do |i|
	if i < k-1
		next
	end
	j = i - k + 1
	var = 1
	while j <= i
		var = a[j]*var
		j+= 1
	end
	ans << var
end
(ans.length-1).times do |i|
	if ans[i] < ans[i+1]
		puts 'Yes'
	else
	 puts 'No'
	end
end