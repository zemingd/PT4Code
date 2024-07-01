a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

(0..a).each do |i|
    (0..b).each do |j|
        (0..c).each do |k|
            count = count.succ if i * 500 + j * 100 + k * 50 == x
        end
    end
end

puts count