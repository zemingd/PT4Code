k = gets.to_i

if k % 2 == 0
  answer = (k/2) **2
else
  answer = (k/2) * (k/2 + 1) 
end

puts answer