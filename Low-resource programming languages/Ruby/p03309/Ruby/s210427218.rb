n = gets.to_i
nums = gets.split.map(&:to_i)
posi = 0
nega = 0

nums.each_with_index do |num, i|
  nums[i] = num - i - 1
  if nums[i] < 0
    nega += 1
  elsif nums[i] > 0
    posi += 1
  end
end

if posi != nega
  nums.sort!
  center = nums[n/2]
  nums.each_with_index do |num, i|
    nums[i] = num - center
  end
end

p nums.sum