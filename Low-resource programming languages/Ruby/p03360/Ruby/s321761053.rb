arr = gets.split(' ').map(&:to_i)
n = gets.to_i

n.times do
  i = arr.index(arr.max)
  arr[i] = arr[i] * 2
end

puts arr.reduce(:+)