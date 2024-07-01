while in=gets do
  i, j= in.split.map &:to_i
  k=i+j
  cnt=0
  begin
    cnt+=1
    q,r=k.divmod(10)
    k = q+r
  end while k/10<10
  puts cnt
end