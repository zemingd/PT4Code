num=1
ans=0
h=gets.to_i
while h>0 do
  ans += num
  num *= 2
  h /= 2
end
puts(ans)
