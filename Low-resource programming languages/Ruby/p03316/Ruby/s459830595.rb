n = gets.to_i
m = n
s = 0
while m > 0 do
    s += m % 10
    m /= 10
end

puts (n % s == 0) ? 'Yes' : 'No'
