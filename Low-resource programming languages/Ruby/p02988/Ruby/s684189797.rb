n = gets.to_i
arr = gets.split.map(&:to_i)
i = 1
res = 0
while i < n - 1
  res += 1 if (arr[i-1] < arr[i] && arr[i] < arr[i+1]) || (arr[i-1] > arr[i] && arr[i] > arr[i+1])
  i += 1
end
puts res