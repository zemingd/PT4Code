n = gets.to_i
n.times do
s = gets
t = s.split
x1 = t[0].to_f 
y1 = t[1].to_f 
x2 = t[2].to_f 
y2 = t[3].to_f 
x3 = t[4].to_f 
y3 = t[5].to_f 
x4 = t[6].to_f 
y4 = t[7].to_f 

xx1 = x2 - x1
yy1 = y2 - y1
xx2 = x4 - x3
yy2 = y4 - y3

if xx1 == 0.0 || xx2 == 0.0
 if xx1 == 0.0 && xx2 == 0.0
  puts "YES"
 else
  puts "NO"
 end
 else
  a = yy1 / xx1
  b = yy2 / xx2
  if (a - b).abs < 1e-10
    puts "YES"
  else
    puts "NO"
  end
end

end
