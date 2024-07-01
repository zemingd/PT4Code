n = gets.to_i
flag = false
while n > 0
   if n % 10 == 9
    flag = true
   end
   n /= 10
end

puts flag ? "Yes" : "No"