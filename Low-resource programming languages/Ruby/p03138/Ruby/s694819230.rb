n, k = gets.split.map(&:to_i)
xx = gets.split.map(&:to_i)
if k == 0
    puts xx.reduce(:+)
else
    a = 0
    y = 1
    loop do
        break if k < y
        if xx.map{ |x| x ^ (a + y) }.reduce(:+) > xx.map{ |x| x ^ a }.reduce(:+)
            a += y
        end
        y <<= 1
    end
    puts xx.map{ |x| x ^ a }.reduce(:+)
end

