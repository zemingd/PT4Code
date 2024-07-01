n, k = gets.split.map(&:to_i)
nums = {}
n.times do
  a, b = gets.split.map(&:to_i)
  if nums[a].nil?
    nums[a] = b
  else
    nums[a] += b
  end
end
nums = nums.sort_by { |key, value| key }
current = 0
nums.each do |key, value|
  current += value
  if current >= k
    puts key
    break
  end
end
