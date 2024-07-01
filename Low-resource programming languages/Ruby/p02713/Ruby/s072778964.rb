A = gets.to_i
ans = 0

(1..A).each do |i|
    (1..A).each do |j|
        (1..A).each do |k|
            ans += (i.gcd(j)).gcd(k)
        end
    end
end

puts ans