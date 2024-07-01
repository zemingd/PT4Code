n = gets.chop.to_i

ans = 0
(1..n).each do |i|
    next if i.even?
    count = 0
    (1..n).each do |j|
        count += 1 if i % j == 0
    end
    ans += 1 if count == 8
end

p ans