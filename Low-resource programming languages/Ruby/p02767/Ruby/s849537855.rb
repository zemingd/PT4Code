n = gets.to_i
# s = gets.chomp
x = gets.split.map(&:to_i)

c = 0
ans = (100 - 0) ** 2 * 100 + 1000000000000
101.times do |i|
    c = 0
    x.each do |y|
        c += ( y - i ) ** 2
    end
    ans = c if ans > c
end

p ans

    
