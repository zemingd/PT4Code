n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

m.times do
  arr[arr.index(arr.max)] /= 2
  break if arr[arr.index(arr.max)] == 0
end

p arr.inject(:+)
