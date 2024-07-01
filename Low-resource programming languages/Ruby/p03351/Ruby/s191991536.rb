a,b,c,d = gets.split(" ").map(&:to_i)
h = 0 #高い方
m = 0 #中間
l = 0 #高い方
if a < c then
  h = c
  l = a
else
  h = a
  l = c
end
if a < b && b < c || c < b && b < a then
  m = b
end
  
if h - l <= d then
  print "Yes"
elsif m - l <= d && h - m <= d then
  print "Yes"
else 
  print "No"
end