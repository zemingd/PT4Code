a, b, c, d = gets.chomp.split(" ").map(&:to_i);
e = (a.to_f / d).ceil
f = (c.to_f / b).ceil
if f > e
  puts "Yes"
else
  puts "No"
end
