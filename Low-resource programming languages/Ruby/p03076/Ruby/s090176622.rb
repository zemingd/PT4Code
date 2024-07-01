arr = []
5.times do
  arr.push(gets.to_i)
end
min_r = 10
min_r_index = -1
arr.each_with_index do |num,i|
  if arr[i] % 10 != 0
    if arr[i] % 10 < min_r
      min_r = arr[i] % 10
      min_r_index = i
    end
  end
end
arr.each_with_index do |num,i|
  if arr[i] % 10 != 0
    if i != min_r_index
      arr[i] += 10 - (arr[i] % 10)
    end
  end
end
puts arr.sum