s = gets.split
w = s[0].to_i
h = s[1].to_i
x = s[2].to_i
y = s[3].to_i
r = s[4].to_i

if x+r <= w && x-r >= 0 && y+r <= h && y-r >=0 then
puts "Yes"
else
puts "No"
end


