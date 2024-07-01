n,m=gets.split.map &:to_i
a=Array.new(n){Array.new}
m.times do |i|
  x,y,z=gets.split.map &:to_i
  a[x-1]<< [y-1,z,i]
end
t=0
$a=a
$c=[-10**20]*n

$c[0]=0
$n=n
$count=0
$j=true
$cc=[nil]*m
$j=true
def d t,s
  $c[t]=s if s>$c[t]
  g=$a[t]
  g.each do |e|
    if $cc[e[2]]
      $j=false
    else
      $cc[e[2]]=true
      d(e[0],s+e[1]) if $j
    end
  end
end
d 0,0
puts $j ? $c[n-1] : "inf"