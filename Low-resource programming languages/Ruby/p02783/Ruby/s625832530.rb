a = readlines
a = a[0].split(" ").map { |n| n.to_i }
if a[0] == a[1]
  p a[0]/a[1]
else 
 p a[0]/a[1] + 1
end