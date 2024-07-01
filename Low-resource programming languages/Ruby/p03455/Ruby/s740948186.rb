def num_handler(nums)
  a = nums[0]
  b = nums[1]
  if a < 1 || a > 10000
    return ""
  end
  if b < 1 && b > 10000
    return ""
  end
  result = ((a * b) % 2) == 0
  if result
    return "Even"
  else
    return "0dd"
  end
end

input = gets.chomp.split.map(&:to_i)
puts num_handler(input)