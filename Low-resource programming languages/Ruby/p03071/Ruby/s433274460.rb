nums = gets.strip.split(' ').map(&:to_i)
sum = 0
2.times do
  if nums[0] > nums[1]
    sum += nums[0]
    nums[0] -= 1
  else
    sum += nums[1]
    nums[1] -= 1
  end
end

puts sum
