n, k = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
if k == 0
    puts xx.reduce(:+)
else
y = 1
    loop do
        break if k < (y << 1)
        y <<= 1
    end
end
puts xx.map{ |x| x ^ y }.reduce(:+)
