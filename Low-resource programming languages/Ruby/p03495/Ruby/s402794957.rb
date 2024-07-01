N,K=gets.split.map &:to_i
A=gets.split.map &:to_i
h=Hash.new{|h,k|h[k]=0}
A.each{|i|h[i]+=1}
H=h.sort{|l,r|l[1]<=>r[1]}
if H.size<=K
  p 0
else
  s=0
  H.each.with_index do |(k,v),i|
    break unless i < h.size-K
    s+=v
  end
  p s
end