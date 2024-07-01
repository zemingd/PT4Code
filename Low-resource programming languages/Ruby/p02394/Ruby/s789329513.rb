str = gets
num = str.split(" ")
W = num[0].to_i
H = num[1].to_i
x = num[2].to_i
y = num[3].to_i 
r = num[4].to_i

if 0<r && r<=x && r<=y && 0<x+r && x+r<=W && 0<y+r && y+r<=H then
  puts "Yes"
  elsif
    puts "No"
end