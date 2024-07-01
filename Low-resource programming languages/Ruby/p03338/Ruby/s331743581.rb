n=gets.to_i
s=gets
ans=0
n.times{|l|
  a=Hash.new(0)
  for i in 0..l do
    a[s[i].ord-'a'.ord]=1
  end
  b=Hash.new(0)
  for i in l..n do
    b[s[i].ord-'a'.ord]=1
  end
  tans=0
  a.each{|k,v|
    tans+=1 if b[k]==1
  }
  ans=[ans,tans].max
}
p ans