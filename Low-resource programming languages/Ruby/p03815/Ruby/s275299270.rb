N = gets.to_i
ans =  (N / 11) * 2
m = N % 11
if m == 0
    
elsif m <= 5
    ans += 1
else 
    ans += 2
end
puts ans