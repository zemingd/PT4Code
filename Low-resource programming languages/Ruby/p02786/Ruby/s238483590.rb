h = gets.to_i
flag = 1
count =0

def shori(h)
  if (h != 1)&& (h%2==1)
    h-=1
  end
  return h
end
def shori2(h)
  if h==1
    return 0
  else
    return 1
  end
end
h=shori(h)


while shori2(h)==1
  h=h/2
  h=shori(h)
  count+=1
end
ans=0
for i in 0..count
  ans += 2**i
end

puts ans

