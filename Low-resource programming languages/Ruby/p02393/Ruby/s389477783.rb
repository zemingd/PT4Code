intarray = STDIN.gets.split(" ").each do |str|
a,b,c = intarray
a.to_i;b.to_i;c.to_i;
max = a
if b>max
 mid=max;max=b;
else
 mid=b
end

if c>max
 min=mid;mid=max;max=c;
else
 if c>mid
  min=mid;mid=c;
 else
  min=c
 end
end