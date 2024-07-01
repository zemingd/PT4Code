n = gets.to_i
sum = 0
(1..n).each do |i|
    (1..n).each do |j|
        (1..n).each do |k|
            sum += k.gcd(i.gcd(j))
        end
    end
end
puts sum