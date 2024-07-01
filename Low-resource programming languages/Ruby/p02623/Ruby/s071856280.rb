n,m,k=gets.split.map &:to_i
as=gets.split.map &:to_i
bs=gets.split.map &:to_i
c=0
m=0
if as[0]>k && bs[0]>k
  p 0
else
  while m<=k
    if as.first<=bs.first
      break if m+as.first>k
      m+=as.shift
      c+=1
    elsif as.first>bs.first
      break if m+bs.first>k
      m+=bs.shift 
      c+=1
    end
    break if bs.size==0 || as.size==0
  end
  while m<=k
    if bs.size==0
      break if m+as.first>k
      m+=as.shift
      c+=1
    elsif as.size==0
      break if m+bs.first>k
      m+=bs.shift 
      c+=1
    end
    break if bs.size==0 && as.size==0
  end
  p c
end