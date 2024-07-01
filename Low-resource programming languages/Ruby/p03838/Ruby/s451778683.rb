s = gets.chomp.split(" ")
x = s[0].to_i
y = s[1].to_i
 
z = (x.abs - y.abs).abs
 
if ((x >= 0) and (y >= 0) and (y > x))
    z = z 
elsif ((x < 0) and (y < 0) and (x > y)) 
    z = z + 2 
else 
    z = z + 1 
end 
 
puts z   