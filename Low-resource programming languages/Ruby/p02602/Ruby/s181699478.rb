n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
(n - k).times do |left|
  puts nums[left] < nums[left + k] ? "Yes" : "No"
end
