a = gets.chomp!
b = gets.chomp!
d = b.length
c = b.slice(0,d - 1)
if c == a then
    puts "Yes"
else
    puts"No"
end