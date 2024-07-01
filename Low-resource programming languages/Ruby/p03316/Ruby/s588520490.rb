n = gets.to_i
k = n
sum = 0
while k > 0 do 
    sum += k%10   
    k = k/10
end

puts n % sum  ==  0 ? "Yes" : "No"