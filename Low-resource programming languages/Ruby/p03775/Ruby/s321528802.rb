num = gets.to_i

a = 0
for i in 1..Math.sqrt(num) do
    if num % i == 0
        a = i
    end
end
b = num / a

x = a if a >= b
x = b if a < b

ans = 0
while x >= 1 do
    x /= 10
    ans += 1
end

puts ans
