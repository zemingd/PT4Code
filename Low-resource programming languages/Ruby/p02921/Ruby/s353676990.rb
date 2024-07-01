a,b,c=gets.chomp.split("").map(&:to_i);
d, e, f=gets.chomp.split("").map(&:to_i);
 
 
unchi = 0
 
if a == d
  unchi = unchi + 1
end
 
if b == e
  unchi = unchi + 1
end
if c == f
  unchi = unchi + 1
end
 
 
print unchi