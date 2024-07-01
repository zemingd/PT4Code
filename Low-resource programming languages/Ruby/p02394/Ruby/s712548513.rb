data = gets.split(" ")
weight = data[0].to_i
height = data[1].to_i
x = data[2].to_i
y = data[3].to_i
r = data[4].to_i

flg = 0
if (((x - r) < 0) or ((y - r) < 0) or ((x + r) > weight) or ((y + r) > height))
  flg += 1
end

if flg == 0
  puts "Yes"
else
  puts "No"
end