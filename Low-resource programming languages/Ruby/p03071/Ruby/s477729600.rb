nums = readlines.map(&:to_i)
ans = 0
2.times do
  if nums[0] >= nums[1]
    ans += nums[0]
    nums[0] -= 1
  else
    ans += nums[1]
    nums[1] -= 1
  end
end
p ans