x = gets.to_i
ans = 0
n = 100
while (n < x) 
    n = (n*100+n)/100
    ans += 1
end
puts ans