w = gets.to_i
h = gets.to_i
x = gets.to_i
y = gets.to_i
r = gets.to_i
if (x-r<=0) || (x+r>=w) || (y-r<=0) || (y+r>=w) then
                puts "no"
elsif (x-r>0) && (x+r<w) && (y-r>0) && (y+r<w) then
                puts "yes"
end