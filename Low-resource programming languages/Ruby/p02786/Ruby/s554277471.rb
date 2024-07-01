h=gets.to_i

ans=0
cnt=0
while h>0
    h /= 2
    ans+=2**cnt
    cnt+=1
end
p ans
