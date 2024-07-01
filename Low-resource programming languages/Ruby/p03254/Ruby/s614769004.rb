N,x=gets.split.map &:to_i
a=gets.split.map(&:to_i).sort
c=0
N.times{|i|
  if x>=a[i] then
    x-=a[i]
    c+=1
  end
}
if c==N&&x>0 then c-=1 end
p c