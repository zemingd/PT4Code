input = gets.split

p = input[0].to_i
z = input[1].to_i
m = input[2].to_i
n = input[3].to_i
s = 0

if n > p then
  s+=p
  n-=p
else
  s+=n
  p s
  exit
end

if n > z then
  n-=z
else
  p s
  exit
end

if n > m then
  s-=m
  n-=m
  p s
else
  s-=p
  p s
end
