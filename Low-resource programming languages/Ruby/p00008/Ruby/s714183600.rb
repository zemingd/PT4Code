n = gets.to_i
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts arr.product(arr).product(arr).product(arr).count{|i| i.flatten.inject(:+) == n }