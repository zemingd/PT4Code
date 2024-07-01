io = STDIN
k=[]
N,m=io.gets.split.map(&:to_i)
sw=m.times.map do 
  ar=io.gets.split.map(&:to_i)
  k << ar.shift
  ar
end
par=io.gets.split.map(&:to_i)
sws=sw.flatten.uniq.sort
$sws=[]
def gen(sw)
  if sw.size==N
    $sws << sw
    return
  end
  gen(sw+[true])
  gen(sw+[false])
end
def hantei(pattern,sw,par)
  bool = sw.map{|i|pattern[i-1]}.count{|e|e==true}%2 == par
  bool
end
gen([])
ans=0
$sws.map do |pattern|
  ar=sw.size.times.map do |i|
    hantei(pattern,sw[i],par[i])
  end
  ans+=1 if ar.all?
end
p ans
