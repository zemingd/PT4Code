io = STDIN
n,$a,$b,$c=io.gets.split.map(&:to_i)
ar=n.times.map{io.gets.to_i}
def mp(hist)
  (hist[0].size-1)*10+(hist[0].inject(0){|s,i|s+i}-$a).abs+
  (hist[1].size-1)*10+(hist[1].inject(0){|s,i|s+i}-$b).abs+
  (hist[2].size-1)*10+(hist[2].inject(0){|s,i|s+i}-$c).abs
end
$ans=Float::INFINITY
def dfs(stick,hist)
  if stick==[]
     if (hist[0].size>0 &&
        hist[1].size>0 &&
        hist[2].size>0)
       $ans = [mp(hist),$ans].min
     end
     return
  end
  4.times do |i|
    hist[i] << stick[0]
    dfs(stick[1..-1],hist)
    hist[i].pop
  end
end
dfs(ar,[[],[],[],[]])
p $ans
