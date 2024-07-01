n = gets.to_i
arr = []
5.times{arr << gets.to_i}
arr2 = [n, 0, 0, 0, 0, 0]
5.times{
    4.downto(0){|i|
        arr2[i + 1] += [arr2[i], arr[i]].min
        arr2[i] -= [arr2[i], arr[i]].min
    }
}
puts (n.to_f / arr2[5]).ceil + 4