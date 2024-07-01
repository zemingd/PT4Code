num = gets.chomp.split(" ").map(&:to_i)
w = num[0]
h = num[1]
x = num[2]
y = num[3]
r = num[4]
if (x>r)&&(x<(w-r))&&(y>r)&&(y<(h-r))
  puts "Yes"
else
  puts "No"
end