nums = $stdin.read.split(" ")
nums.map! do |element|
	element.to_i
end
q=nums[1]
#p nums
nums.shift(2)
nums.sort!
#p nums
target = nums.last(q)
#p target
sum = 0
target.each do |length|
	sum += length
end
p sum
