require 'bigdecimal'
io = STDIN

$hash=Hash.new{|h,k|h[k]=[]}
$n,m=io.gets.chomp.split.map(&:to_i)
m.times do
  a,b,c=io.gets.chomp.split.map(&:to_i)
  $hash[a]<<[b,c]
end
$ans=BigDecimal("-Infinity")
$logs=[]
$stack=[]
def bfs(x,val,log)
# p ["bfs",x,val,log]
  if x==$n
    $ans=[$ans,val].max
    $logs<<log
  else
    $hash[x].each do |nxt|
      b,c=nxt
      return false if log.include? b
      bfs(b,val+c,log+[b])
    end
  end
end
bfs(1,0,[1])
bs=$hash[$n].map{|b,c|b}
logss=$logs.flatten
if bs.any?{|b|logss.include? b}
  puts 'inf'
else
  puts $ans
end
