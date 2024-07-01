a = readlines
a = a[0].split(" ").map {  |n| n.to_i }
h = a[0]
a = a[1]
count = 0
while h > 0 do
  h -= a 
  count = count + 1
end

p count