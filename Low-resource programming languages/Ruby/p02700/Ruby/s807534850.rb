a,b,c,d = gets.split.map(&:to_i)
x = (c.to_f/b).ceil
y = (a.to_f/d).ceil
if x <= y
  puts "Yes"
else
  puts "No"
end