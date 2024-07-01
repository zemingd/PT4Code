n = gets.to_i
ans = 0
(1..n).each do |i|
    next if i.even?
    count = 0
    (1..n).each do |k|
        if i%k == 0
            count += 1
        end 
    end 
    if count == 8
        ans += 1
    end 
end
puts ans