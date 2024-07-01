a = readlines
a = a[0].split(" ").map {  |n| n.to_i }
H = a[0]
A = a[1]
count = 0
while H < 0 
  H = H - A
  count = count + 1
end

p count