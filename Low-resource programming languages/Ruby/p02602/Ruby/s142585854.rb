n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
scores = [nums[0, k].inject(:*)]
(n - k).times do |left|
  tmp = scores.last
  tmp /= nums[left]
  tmp *= nums[left + k]
  scores << tmp
end
scores.each_cons(2) do |a, b|
  if a < b
    puts "Yes"
  else
    puts "No"
  end
end
