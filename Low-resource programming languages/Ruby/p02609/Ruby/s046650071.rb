n=gets.to_i
$f=[0]*200001
s=gets.chomp
x=s.to_i(2)
d=s.count("1")
c=0
y=0
k=2**(n-1)
def ff(y,d,s)
  if y>200000||$f[y]==0&&d>0
    r=y%d
    s << r
    ff(r,r.to_s(2).count("1"),s)
  else
    return s
  end
end
n.times do |i|
  if s[i]=="0"
    y=x+k
    c=d+1
  else
    y=x-k
    c=d-1
  end
  if y>200000
    ss=ff(y,c,[])
    (ss.size-2).downto(0) do |i|
#      p [sy,sr]
      $f[ss[i]]=$f[ss[i+1]]+1
    end
    puts $f[ss[0]]+1
  elsif $f[y]==0
    ss=ff(y,c,[])
    (ss.size-2).downto(0) do |i|
      $f[ss[i]]=$f[ss[i+1]]+1
    end
    $f[y]=$f[ss[0]]+1
    puts $f[y]
  else
    puts $f[y]
  end
#  p [y,$f[y]]
  k/=2
end
#p $f
