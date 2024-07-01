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
def d t,s
  $count+=1
    $c[t]=s
    g=$a[t]
    g.each do |e|
      d(e[0],s+e[1]) if $c[e[0]]==-10**20
    end
end
d 0,0
puts $count<=2000 ? $c[n-1] : "inf"