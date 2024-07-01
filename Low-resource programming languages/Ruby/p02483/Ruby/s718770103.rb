a = gets(" ")
b = gets(" ")
c = gets("\n")

tmp = 0;

if a > b then
  tmp = b
  b = a
  a = tmp
end

if b > c then
  tmp = c
  c = b
  b = tmp
end

if a > b then
  tmp = b
  b = a
  a = tmp
end

print(a.to_i," ",b.to_i," ",c.to_i,"\n")