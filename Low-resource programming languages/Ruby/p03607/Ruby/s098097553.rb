n = gets.to_i
nums = Hash.new(false)
n.times do
  q = gets.to_i
  if nums[q]
    nums.delete(q)
  else
    nums[q] = true
  end
end
puts nums.count { |k, v| v }