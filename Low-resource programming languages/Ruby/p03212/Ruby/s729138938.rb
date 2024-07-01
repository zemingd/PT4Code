N = gets.to_i
digit = N.to_s.length

arr = [3, 5, 7]
ans = 0
(3..digit).each do |d|
    (3**d).times do |trits|
        use = []
        sum = 0
        d.times do |i|
            sum *= 10
            num = arr[trits % 3]
            use[num] = true
            sum += num
            trits /= 3
        end
        if arr.all?{|i| use[i]} && sum <= N
            ans += 1
        end
    end
end
puts ans