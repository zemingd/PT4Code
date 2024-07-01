n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

abs_arr = (1...n).map do |t|
    a1 = arr[0..t]
    a2 = arr[(t + 1)..n]
    s1 = a1.sum
    s2 = a2.sum
    (s1 - s2).abs
end

puts abs_arr.min