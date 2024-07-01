def num_handler(nums)
  a = nums[0]
  b = nums[1]
  result = ((a * b) % 2) == 0
  if result
    return "Even"
  else
    return "Odd"
  end
end

input = gets.chomp.split.map(&:to_i)
puts num_handler(input)