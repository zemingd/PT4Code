w, h, x, y, r =gets.split(" ").map(&:to_i)

a = x+r
b = y+r

if a > w || a < 0
    puts "No"
elsif b > h || b< 0
    puts "No"
else
    puts "Yes"
end