W, H, x, y, r = gets.split(" ").map(&:to_i)

a = x + r
b = y + r

if W >= a && H >= b then
    puts "Yes"
else
    puts "No"
end