i = 0
if N > 1
  nums = N - 1
  nums.times do
    i += nums
    nums -= 1
  end
end
if M > 1
  i += M
end
p i