s = gets().split(" ")
a = s[0].to_i
b = s[1].to_i
x = s[2].to_i
if (a <= x && x <= b)
  puts "YES"
else
  puts "NO"
end
