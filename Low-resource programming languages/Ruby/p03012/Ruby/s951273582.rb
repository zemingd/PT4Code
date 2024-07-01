n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
i = 0
s1 = []
s2 = []
while i < n
  if arr.sum/2 <= s1.sum
    s2 << arr[i]
  else
    s1 << arr[i]
  end
  i += 1
end
if (s1.sum-s2.sum).abs > ((s1.sum-s1[-1])-(s2.sum+s1[-1])).abs
  p ((s1.sum-s1[-1])-(s2.sum+s1[-1])).abs
else
  p (s1.sum-s2.sum).abs
end