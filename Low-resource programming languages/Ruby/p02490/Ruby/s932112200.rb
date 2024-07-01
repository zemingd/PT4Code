def input()
	times = 0
	nums = []
	while true do
		a , b = gets.split().map{|e| e.to_i}.sort!
		if a == 0 and b == 0
			break
		else
			nums[times] = [a , b]
			times += 1
		end
	end
	nums
end

nums = input()
nums.each do |v|
	puts "#{v[0]} #{v[1]}"
end