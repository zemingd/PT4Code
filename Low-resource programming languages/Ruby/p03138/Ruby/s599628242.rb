n, k = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
if k == 0
    puts xx.reduce(:+)
else
    y = 1
    ans = 0
    loop do
        break if k < y
        tmp = xx.map{ |x| x ^ y }.reduce(:+)
        if tmp > ans
            ans = tmp
        end
        y <<= 1
    end
end
puts ans
