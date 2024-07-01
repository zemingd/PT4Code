n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
(0..n).each do |i|
    (0..n-1).each do |j|
        if i + j > k
            break
        end
        arr = (a[0,i] + a[-j,j]).dup
        arr = arr.sort!
        kaisuu = k - i - j
        while true
            if kaisuu > 0 && arr != []
                if arr[0] < 0
                    kaisuu -= 1
                    arr.shift
                else
                    break
                end
            else
                break
            end
        end
        if arr != []
        kai = arr.inject(0,:+)
        ans = [ans,kai].max
        end
    end
end
puts ans