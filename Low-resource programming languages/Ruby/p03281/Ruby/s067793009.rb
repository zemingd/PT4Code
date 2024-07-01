N = gets.to_i
ans = 0
(1..N).each do |i|
    next if i%2==0
    num = 0
    (1..i).each do |j|
        num += 1 if i%j==0
    end
    ans += 1 if num == 8
end
puts ans