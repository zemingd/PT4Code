is = gets.chomp!.split(" ")
is.map!(&:to_i)
 
w = is[0]
h = is[1]
x = is[2]
y = is[3]
r = is[4]
if (x-r<=0) || (x+r>=w) || (y-r<=0) || (y+r>=w) then
                puts "no"
elsif (x-r>0) && (x+r<w) && (y-r>0) && (y+r<w) then
                puts "yes"
end