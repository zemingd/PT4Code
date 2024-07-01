n = gets.to_i
nums = Hash.new(false)
n.times do
  q = gets.to_i
  nums[q] = !nums[q]
end
puts nums.count { |k, v| v }