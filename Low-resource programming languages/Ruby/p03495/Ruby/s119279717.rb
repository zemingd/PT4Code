n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)
m = nums.uniq.size

if m > k
  puts m - k
else
  puts m
end
