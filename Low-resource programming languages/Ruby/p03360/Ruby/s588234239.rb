arr = gets.split(' ').map(&:to_i)
k = gets.to_i
arr[arr.index(arr.max)] *= 2**k
puts arr.inject(:+)
