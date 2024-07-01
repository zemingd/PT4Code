n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
count = 0
min = n + 1
i = 0
while i < arr.size
  if arr[i] <= min
    count += 1
    min = arr[i]
  end
  i += 1
end
puts count