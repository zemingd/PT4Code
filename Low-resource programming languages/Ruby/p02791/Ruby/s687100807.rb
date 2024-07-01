n = gets.to_i
nums = gets.split.map(&:to_i)

min = nums[0]
count = 0

n.times do |i|
  if min >= nums[i]
    count +=1
    min = nums[i]
  end
end

puts count