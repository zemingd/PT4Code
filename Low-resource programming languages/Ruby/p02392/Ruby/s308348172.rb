str = gets
num = str.split(" ")
a = num[0].to_i
b = num[1].to_i
c = num[2].to_i

if a < b && b < c  then
  puts "Yes"
else
  puts "No"
end