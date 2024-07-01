H=gets.to_i
L=41
cnt=0
ans=0

while L>=0 do
  cnt+=H[L]
  ans+=cnt*2**L
  L-=1
end

puts ans