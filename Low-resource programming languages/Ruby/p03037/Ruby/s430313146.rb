n,m = gets.split.map(&:to_i)
a = []
b = [] 
for num in 0..m-1 do
  l ,r= gets.split.map(&:to_i)
  a << l
  b << r
end
c = a.sort.reverse[0]
d = b.sort[0]
if d-c < 0
  p 0
else
  p d - c + 1
end