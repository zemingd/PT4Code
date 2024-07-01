n=gets.to_i
s=gets.split.map &:to_i
sum=s.sum
amu=0
ans=sum
s.each{|i|
  amu+=i
  sa=((sum-amu)-amu).abs
  ans=[sa,ans].min
}
puts ans
