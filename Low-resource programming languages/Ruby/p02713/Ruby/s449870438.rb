k=gets.to_i
h={}
s=0
f=->x{
  h[x]||=(1..k).reduce(0){|t,i|
    t+x.gcd(i)
  }
}
(1..k).each{|a|
  s+=f[a]
  (a+1..k).each{|b|
    g=a.gcd(b)
    s+=f[g]*2
  }
}
puts s
