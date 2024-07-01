H=gets.to_i
L=41
cnt=0
ans=0

while L>=0 do
  cnt=cnt*2+H[L]
  ans+=cnt
  L-=1
end

puts ans