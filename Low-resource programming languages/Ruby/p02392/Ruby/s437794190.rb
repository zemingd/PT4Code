a, b, c = gets.split(" ")
a, b, c = a.to_i, b.to_i, c.to_i
if a < b && b<c
    puts "YES"
else
    puts "NO"
end