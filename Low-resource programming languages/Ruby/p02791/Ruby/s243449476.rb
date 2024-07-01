N = gets.to_i
nums = gets.split.map(&:to_i)
count = 0
N.times do |i|
  j = 0
  ret = true
  while j < i
    if nums[j] < nums[i]
      ret = false
      break
    end
    j += 1
  end
  count += 1 if ret
end
puts count
