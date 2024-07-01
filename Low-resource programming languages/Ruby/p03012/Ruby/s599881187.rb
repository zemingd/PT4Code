n = gets.to_i
arr = gets.chomp.split.map(&:to_i)
sum = arr.inject(:+)
a, min = 0, nil
0.upto(n-2){|i|
    a += arr[i]
    sum -= arr[i]
    diff = (a - sum).abs
    min = diff if min.nil? || min > diff
}
puts min