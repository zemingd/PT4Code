a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
count = 0
ans = 0
(0..(x/500)+1).each do |i|
    (0..(x/100)+1).each do |j|
        (0..(x/50)+1).each do |k|
            ans = 500 * i + 100 * j + 50 * k
            if ans.to_s == x.to_s && i <= a && j <= b && k <= c
                count += 1
            end
        end
    end
end
puts count