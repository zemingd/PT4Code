arr = gets.chomp.split(' ').map(&:to_i)
i = 0
sum = []
while i < arr.size
  j = i+1
  while j < arr.size
    sum << arr[i] + arr[j]
    j += 1
  end
  i += 1
end
p sum.sort.first