n = gets.to_i
arr = []
5.times{arr << gets.to_i}
a, b = n, 0
5.times{|i|
    b = [a, arr[i]].min
    a = b
}
puts (n.to_f / b).ceil + 4