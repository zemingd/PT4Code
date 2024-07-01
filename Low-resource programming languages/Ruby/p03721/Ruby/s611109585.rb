n, k = gets.split.map(&:to_i)
arr = []
n.times do
  ab = gets.split.map(&:to_i)
  arr = arr + ([ab[0]] * ab[1])
end

arr.sort!

puts arr[k-1]
