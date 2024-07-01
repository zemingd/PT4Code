a,b,c = gets.split(" ").map(&:to_i)
z = a + b + c
if z >= 22
    puts "bust"
else
    puts "win"
end