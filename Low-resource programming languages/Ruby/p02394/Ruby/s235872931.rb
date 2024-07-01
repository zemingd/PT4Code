b = gets()
a = b.split
W = a[0].to_i
H = a[1].to_i
x = a[2].to_i
y = a[3].to_i
r = a[4].to_i

if 0 < x - r && x + r < W && 0 < y - r && y + r < H
    puts "Yes"
else
    puts "No"
end

