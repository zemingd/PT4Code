ans = gets.chomp.to_i
k = ans
sum = 0
while k>0 do 
     sum += k % 10
     k = k/10
end
puts  ans%sum == 0 ? "Yes" : "No" 
