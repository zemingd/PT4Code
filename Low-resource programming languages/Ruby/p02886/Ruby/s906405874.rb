n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
i = 0
hp = 0
while i < n
  j = i+1
  while j < n
    hp += arr[i]*arr[j]
    j += 1
  end
  i += 1
end
puts hp