n = gets.to_i
n_ = n

s = 0
while n > 0
    s += n % 10
    n /= 10
end

puts n_ % s == 0 ? 'Yes' : 'No'