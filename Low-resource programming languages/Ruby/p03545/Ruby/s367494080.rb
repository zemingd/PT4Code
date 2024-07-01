nums = gets.chars.map(&:to_i)

%w(+ -).repeated_permutation(3).each do |ops|
  res = nums[0]
  ops.zip(nums[1..-1]) do |op, num|
    res = (op == '+') ? res + num : res - num
  end

  if res == 7
    puts [nums[0], ops[0], nums[1], ops[1], nums[2], ops[2], nums[3], '=7'].join
    break
  end
end