n = gets.to_i
arr = gets.split(" ").map{|x|
	x.to_i
}
memo = {}
arr.each do |x|
	[x, x-1, x+1].each do |n|
		if !memo.has_key?(n) then
			cnt = 0
			arr.each do |y|
				case y 
					when n then
						cnt += 1
					when n-1 then
						cnt += 1
					when n+1 then 
						cnt += 1
					else
				end
			end
			memo.store(n, cnt)
		end
	end
	arr.delete_at(0)
end

max = 0
memo.each{|key, value|
	if max < value then
		max = value
	end
}

p max