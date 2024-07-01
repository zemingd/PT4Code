n,m=gets.split.map &:to_i
a=Array.new(n){Array.new}
m.times do
  x,y,z=gets.split.map &:to_i
  a[x-1]<< [y-1,z]
end
t=0
$a=a
$c=[-10**20]*n

$c[0]=0
$n=n
$count=0
$j=true
$cc=[0]*n
def d t,s
  $cc[t]+=1
  if $cc[t]<=1000
    $c[t]=s if s>$c[t]
    g=$a[t]
    g.each do |e|
      d(e[0],s+e[1])
    end
  end
end
d 0,0
puts $cc.max!=1001 ? $c[n-1] : "inf"