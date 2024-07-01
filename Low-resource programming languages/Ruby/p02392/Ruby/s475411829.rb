a = gets.chomp.to_s
b = a.splits(" ")
c = b[0].to_i
d = b[1].to_i
e = b[2].to_i
if c<d && d<e then
puts "Yes"
else
puts "No"