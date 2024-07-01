str=gets.chomp
num=str.split
W=num[0].to_i
H=num[1].to_i
x=num[2].to_i
y=num[3].to_i
r=num[4].to_i
if x-r>=0 && y-r>=0 && x+r<W && y+r<H then
  puts "Yes"
else
  puts "No"
end