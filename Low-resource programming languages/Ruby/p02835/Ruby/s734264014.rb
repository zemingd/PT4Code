str = gets.split
A1,A2,A3 = str[0].to_i, str[1].to_i, str[2].to_i
all = A1+A2+A3
if all >= 22
    puts "bust"
else
    puts "win"
end