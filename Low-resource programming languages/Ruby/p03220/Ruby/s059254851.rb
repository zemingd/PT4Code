n=gets.to_i
t,a=gets.split.map &:to_f
h=gets.split.map &:to_f
ans=10**18
j=1
kai=0
h.map{|i|
  i=t-i*0.006
  an=ans
  ans=[ans,((i-a).abs)].min
  if an!=ans
    kai=j
  end
  j+=1
}
puts kai
