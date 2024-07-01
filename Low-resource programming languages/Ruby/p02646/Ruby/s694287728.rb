a,v=gets.chomp.split(" ").map(&:to_i);
b,w=gets.chomp.split(" ").map(&:to_i);
t=gets.to_i;

if a > b
  a,b=b,a
  v,w=w,v
end

if v*t+a >= w*t+b
  puts("YES")
else
  puts("NO")
end
