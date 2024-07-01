arr = Array.new
arr2 = Array.new
arr3 = Array.new
for i in 0..4 do
  arr[i] = gets.chomp.to_i
end
for j in 0..4 do
  arr2[j] = arr[j] % 10
  arr3[j] = arr[j] - arr2[j] + 10
end
arr2.delete(0)
m = arr2.min
puts arr3.inject(:+) + m - 10