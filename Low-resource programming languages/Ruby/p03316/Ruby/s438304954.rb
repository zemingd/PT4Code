
n = gets.to_i

c = 0

tmp = n

while tmp > 0 do
    c += tmp % 10
    tmp /= 10
end

if n%c==0
    puts "Yes"
else 
    puts "No"
end