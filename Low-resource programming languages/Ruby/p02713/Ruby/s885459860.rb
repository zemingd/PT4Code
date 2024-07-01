k = gets.strip.to_i

sum = 0

(1..k).each do |i|
        (1..k).each do |j|
                (1..k).each do |m|
                        sum += (i.gcd(j)).gcd(m)
                end
        end
end

puts sum