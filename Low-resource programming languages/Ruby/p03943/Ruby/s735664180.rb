a,b,c = gets.split.map(&:to_i)
d = [a,b,c].max * 2
e = a + b + c
if d == e
puts "Yes"
else
puts "No"
end