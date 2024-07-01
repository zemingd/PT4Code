n=gets.to_i
s=gets.split.map &:to_i
ans=[]
kai=[]
(1..n).to_a.each{|i|
ans << (s[i-1]-i).abs
kai << (s[i-1]-i)
}
sum=(kai.sum.abs)/n
puts ans.inject(0){|res,x|res+(x-sum).abs}
