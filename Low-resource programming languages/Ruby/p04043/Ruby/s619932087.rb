a,b,c = gets.split.map(&:to_i)
a = a.length
b = b.length
c = c.length
if a == 7 && b == 5 && c == 5
puts "Yes"
elsif a == 5 && b == 7 && c == 5
puts "Yes"
elsif a == 5 && b == 5 && c == 7
puts "Yes"
else
puts "No"
end
