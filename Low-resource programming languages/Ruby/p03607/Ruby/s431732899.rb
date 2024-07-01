n = gets.to_i
nums = Hash.new(false)

n.times do
  i = gets.to_i

  if !nums[i]
    nums[i] = true
  else
    nums[i] = false
  end
end

puts nums.count { |_, v| v == true }
