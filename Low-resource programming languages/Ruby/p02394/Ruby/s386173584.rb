ary = gets.split.map(&:to_i)
width = ary[0]
height = ary[1]
x = ary[2]
y = ary[3]
r = ary[4]

if x <= 0 || y <= 0
  puts "No"
end

if x + r <= width && y + r <= height
  puts "Yes"
else
 puts "No"
end