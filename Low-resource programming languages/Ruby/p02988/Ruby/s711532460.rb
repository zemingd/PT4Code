given_n = STDIN.gets.chomp.to_i
nums = STDIN.gets.chomp.split(' ').map { |n| n.to_i }
idx = 0
count = 0
while idx + 2 <= given_n - 1
  n1, n2, n3 = nums[idx..idx + 2]
  if (n1 < n2 && n2 < n3) || (n1 > n2 && n2 > n3)
    count += 1
  end
  idx += 1
end
puts count
