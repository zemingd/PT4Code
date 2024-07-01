require 'prime'
n = gets.chomp.to_i
count = 0
(1..n).each do |i|
    hairetsu = i.prime_division
    ans = 1
    hairetsu.each do |j|
        ans *= j[-1] + 1 
    end
    if ans == 8 && i % 2 != 0
        count += 1
    end
end
puts count