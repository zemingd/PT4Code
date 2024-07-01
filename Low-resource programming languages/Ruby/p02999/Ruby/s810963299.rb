nums = gets.chomp.split(" ").map(&:to_i)
n1 = nums[0]
n2 = nums[1]
if n1 >= n2
  p 10
else
  p 0
end