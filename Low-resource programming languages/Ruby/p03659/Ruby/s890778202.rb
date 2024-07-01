n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
mean = arr.sum/2
sum = 0
i = 0
while true
  sum += arr[i]
  if sum >= mean
    break
  end
  i += 1
end
puts (sum - arr[(i+1)..(n-1)].sum).abs