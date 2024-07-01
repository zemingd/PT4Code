data = gets.split
a = data[0].to_i
b = data[1].to_i
c = data[2].to_i
ans = c - a + b 
if ans >= 0
    puts ans
else
    puts 0
end
