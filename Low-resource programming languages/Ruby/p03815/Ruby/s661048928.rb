x = gets.to_i

a =  x / 5.5
if x % 5.5 != 0
    b = 1
else
    b = 0
end

puts (a + b).to_i