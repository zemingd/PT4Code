n, k = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
if k == 0
    puts xx.reduce(:+)
else
    a = 0
    y = 1
    loop do
        break if k < (y << 1)
        y <<= 1
    end
    loop do
        break if y <= 0
        if xx.count{ |x| x & y == 0 } > n / 2
            a += y if a <= k
        end
        y >>= 1
    end
    puts xx.map{ |x| x ^ a }.reduce(:+)
end

