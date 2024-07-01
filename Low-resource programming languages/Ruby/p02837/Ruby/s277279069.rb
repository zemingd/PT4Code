n=gets.to_i
y=x=Array.new(n){Array.new()};a=[]
n.times{|i|
  a[i]=gets.to_i;a[i].times{|j| x[i][j],y[i][j] = gets.split.map &:to_i}
}
ans=0
[0,1].repeated_permutation(n).to_a.each{|k|
  dame=0
  n.times{|z|
    next if k[z]==0
    a[z].times{|q|dame=1 if (y[z][q])!=k[x[z][q]-1]}
  }
  ans=[ans,k.sum].max if dame==0
}
puts ans
