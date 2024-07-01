tmp = gets.chomp.split.map(&:to_i)
W = tmp[0]
H = tmp[1]
x = tmp[2]
y = tmp[3]
r = tmp[4]

if W>x+r && H>y+r && 0<y-r && 0<x-r
  puts "Yes"
else
  puts "No"
end