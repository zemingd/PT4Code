s = gets
s = s.split
x = s.to_i
y = x.chars

if y.include?(9)
  puts "Yes"
else
  puts "No"
end
  