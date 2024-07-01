n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
arr = Array.new(n+1, 0)

array.each_with_index do |a, i|
  arr[a] += 1
end

arr = arr.sort.reverse
sum = 0
arr[0..k-1].each do |a|
  sum += a
end

p n - sum
