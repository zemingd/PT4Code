io = STDIN
ab=Hash.new{|h,k|h[k]=[[],0]}
n,m=io.gets.split.map(&:to_i)
$h=io.gets.split.map(&:to_i)
def height(i)
  $h[i-1]
end
(1..n).each do |i|
  ab[i]=[[],0]
end
m.times do
  a,b=io.gets.split.map(&:to_i)
  ar,max=ab[a]
  ar << b
  ab[a]=[ar,[max,height(b)].max]
  ar,max=ab[b]
  ar << a
  ab[b]=[ar,[max,height(a)].max]
end
ans=0
ab.each do |k,v|
  ar,max=v
  ans+=1 if height(k)>max
end
puts ans
