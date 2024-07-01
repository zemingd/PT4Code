W, H, x, y, r = gets.split(" ").map(&:to_i)

a = x + r
b = y + r
c = x - r
d = y - r

if W >= a && H >= b && 0 <= c && 0 <= d then
    puts "Yes"
else
    puts "No"
end