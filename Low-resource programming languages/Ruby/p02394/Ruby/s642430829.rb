is = gets.chomp!.split(" ")
is.map!(&:to_i)
 
w = is[0]
h = is[1]
x = is[2]
y = is[3]
r = is[4]
if (x+r)>w || (x-r)<0 || (y+r)>h || (y-r)<0 then
                puts "no"
else
                puts "yes"
end