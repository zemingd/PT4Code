n = gets.to_i
as = gets.chomp.split(" ")
nums = []
for i in as
  nums.push(i.to_i)
end

(n-1).times do |i|
  if nums[i] < 0
     nums[i] = -nums[i]
     nums[i+1] = -nums[i+1]
  end
end

(n-1).times do |i|
  i = n - i - 1
  if nums[i] < 0 && nums[i].abs > nums[i-1].abs || nums[i]<0 && nums[i-1] < 0
     nums[i] = -nums[i]
     nums[i-1] = -nums[i-1]
  end
end

if nums[0] < 0 && nums[0].abs > nums[1].abs
   nums[0] = -nums[0]
   nums[1] = -nums[1]
end

puts nums.inject(:+)