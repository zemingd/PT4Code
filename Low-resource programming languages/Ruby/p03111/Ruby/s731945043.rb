n,a,b,c=gets.split.map &:to_i
s=[]
n.times do |i|
  s[i]=gets.to_i
end
ans=a+b+c
[1,2,3,4].repeated_permutation(n).to_a.each{|j|
  x=a
  y=b
  z=c
  a1=0
  b1=0
  c1=0
  kai=0
  n.times do |u|
    if j[u]==1
      if a1==1
        kai+=10
      end
      (x-=s[u])
      a1=1
    elsif j[u]==2
      if b1==1
        kai+=10
      end
      (y-=s[u])
      b1=1
    elsif j[u]==3
      if c1==1
        kai+=10
      end
      (z-=s[u])
      c1=1
    end
  end
  x=x.abs; y=y.abs; z=z.abs
  kai+=(x+y+z)
  next if a1+b1+c1 !=3
  ans=[ans,kai].min
}
puts ans
