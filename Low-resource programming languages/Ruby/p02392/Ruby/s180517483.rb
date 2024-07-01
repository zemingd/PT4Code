a, b, c = gets.chomp.split(" ")
a, b, c = a.to_i, b.to_i, c.to_i
if a < b && b < c
    puts "Yes"
else
    puts "No"
end