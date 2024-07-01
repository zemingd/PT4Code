def distance_check(arr_1,arr_2)
  c = 0
  sum = 0
  while c < arr_1.size
    sum += (arr_1[c] - arr_2[c])**2
    c += 1
  end
  if Math.sqrt(sum) - Math.sqrt(sum).to_i == 0
    return true
  else
    return false
  end
end
n,d = gets.chomp.split(' ').map(&:to_i)
count = 0
arr = []
n.times do
  pts = gets.chomp.split(' ').map(&:to_i)
  arr.push(pts)
end
i = 0
while i < arr.size - 1
  j = i + 1
  while j < arr.size
    if distance_check(arr[i],arr[j])
      count += 1
    end
    j += 1
  end
  i += 1
end
puts count