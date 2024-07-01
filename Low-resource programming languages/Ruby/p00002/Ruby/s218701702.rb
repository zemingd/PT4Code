while input=gets do
  i, j= input.split.map &:to_i
  k=i+j
  cnt=0
  while k>=10
    cnt+=1
    k /= 10
  end
  puts cnt+1
end