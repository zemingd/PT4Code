S = gets.chomp.split('').map(&:to_i)
length = S.length
odd_sum = 0
even_sum = 0 
0.upto(length-1) do |i|
    if i % 2 == 0
        even_sum += S[i]
    else
        odd_sum += S[i]
    end
end

if length % 2 == 0
    ans = length/2 - [even_sum, odd_sum].max
    ans += [even_sum, odd_sum].min
else
    if even_sum > odd_sum
        ans = length/2 + 1 - even_sum
        ans += odd_sum
    else
        ans = length/2 - odd_sum
        ans += even_sum
    end
end

puts ans