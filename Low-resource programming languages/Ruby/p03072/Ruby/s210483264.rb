n = gets.to_i
arr = gets.split.map(&:to_i)
res = 1
i = 0
while i < n do
  if i == 0
    i += 1
    next
  end
  j = i - 1
  while j >= 0 do
    unless arr[j] <= arr[i]
      res -= 1
      break
    end
    j -= 1
  end
  i += 1
  res += 1
end
puts res