s = gets.chomp
n = s.size
i = 2
ans = 0
sa = 10000000000000
(0..n-3).each do |i|
    time = 1
    arr = []
    until time == 4
        arr << s[i]
        time += 1
        i += 1
    end
    #p arr
    arr = arr.join("").to_i
    saa = (arr - 753).abs
    sa = [sa,saa].min
end
puts sa