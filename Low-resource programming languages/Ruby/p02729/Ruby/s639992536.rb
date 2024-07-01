N, M = gets.split.map(&:to_i)

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
puts i