n = gets.to_i
inputs = gets.chomp.split(" ").map{ |n| n.to_i }
result,output = 0,0
nums = []
for i in 0..inputs.max+1
	nums.push(inputs.count(i))
end

for i in 1..nums.length-1
	result = nums[i-1..i+1].sum
	output = output > result ? output : result
end

puts output