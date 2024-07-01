n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
0.upto(n) do |i|
      0.upto(n-i) do |j|
        if i + j > k
            next
        end
        arr = (a[0,i] + a[-j,j]).dup.sort!
        kaisuu = k - i - j
        while kaisuu > 0 && arr != []
            kaisuu -= 1
            if arr[0] < 0
                arr.shift
            end
        end
        if arr != []
        kai = arr.inject(0,:+)
        ans = [ans,kai].max
        end
    end
end
puts ans