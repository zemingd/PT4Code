n = gets.chomp.split[0].to_i
nums = gets.chomp.split.map{|u| u.to_i}

nums = nums.sort
diff = []
for i in 0..nums.length - 2 do
  diff << (nums[i + 1] - nums[i]).abs
end

puts (diff.sort - diff.sort.last(n - 1)).sum