n, k = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
if k == 0
    puts xx.reduce(:+)
else
    a = 0
    y = 1
    loop do
        break if k < y
        if xx.count{ |x| x & y == 0 } > n / 2
            a += y
        end
        y <<= 1
    end
    puts xx.map{ |x| x ^ a }.reduce(:+)
end
