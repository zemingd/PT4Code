x = gets.to_i

result = "NO"
for i in 2..x do
    result = "YES" if x % i == 0
end

puts result