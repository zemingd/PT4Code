N,K=gets.split.map(&:to_i)
an,hs,ar=0,{},[]
a=gets.split.map(&:to_i)
a.each{|i|
  hs[i]=0 if hs[i]==nil
  hs[i]+=1
}
hs.each_with_index{|o,i|ar[i]=o[1]}
ar.sort!
(hs.size-K).times{|i|an+=ar[i]}
puts an