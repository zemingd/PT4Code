n = gets.to_i

tmp = n
sum = 0

while tmp>0 do
    sum += tmp%10
    tmp/=10
end

puts (n%sum==0?"Yes":"No")