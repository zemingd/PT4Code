n = gets.to_i
nums = gets.split.map(&:to_i).sort
q = gets.to_i

q.times do
  a, b = gets.split.map(&:to_i)
  next unless nums.include?(a)
  nums.count(a).times { nums[nums.index(a)] = b }
  puts nums.sum
end

