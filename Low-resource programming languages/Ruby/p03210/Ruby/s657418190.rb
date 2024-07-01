x = gets.to_i

result = "NO"
(2..x).times do |i|
    result = "YES" if x % i == 0
end

puts result