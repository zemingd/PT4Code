x = gets.chomp.to_i
n = (x ** (1/2.0)).floor
max = 1
2.upto(n) do |b|
        p = 2
        while(b ** p <= x)
                p += 1
        end
        n = b ** (p - 1)
        max = (max < n) ? n : max
end
puts max