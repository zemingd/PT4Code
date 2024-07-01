arr = gets.chomp.split(' ').map(&:to_i)
i = 0
sum = 0
while i < arr.size
  sum += arr[i]*(arr[i]-1)/2
  i += 1
end
puts sum