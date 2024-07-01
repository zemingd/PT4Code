A, B, *nums = gets.split.flat_map(&:to_i)
num = 0
2.times do |i|
  num += (B - A + 1) / nums[i]
end
puts B - A + 1 - num