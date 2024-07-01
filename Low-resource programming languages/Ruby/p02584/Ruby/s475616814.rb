x, k, d = gets.chomp.split(" ").map(&:to_i)
min = 0
x = x.abs

if x > k*d
    min = x - k*d
    if x < 0
        min *= -1
    end
else
    if (k - x/d).even?
        #偶数の場合
        min = x - d * (x / d)
    elsif
        #奇数の場合
        min = (x - d * (x / d + 1)).abs
    end
end

puts min