x = gets.to_i

result = "YES"
for i in 2..(x-1) do
    result = "NO" if x % i == 0
end

result = "NO" if x == 1

puts result