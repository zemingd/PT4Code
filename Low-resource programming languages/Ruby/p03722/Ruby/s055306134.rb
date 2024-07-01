io = STDIN

$hash=Hash.new{|h,k|h[k]=[]}
$n,m=io.gets.chomp.split.map(&:to_i)
m.times do
  a,b,c=io.gets.chomp.split.map(&:to_i)
  $hash[a]<<[b,c]
end
$ans=0
$stack=[]
def bfs(x,val,log)
# p ["bfs",x,val,log]
  if x==$n
    $ans=[$ans,val].max
  end
    stack=$hash[x].clone
    while xx=stack.shift
      b,c=xx
      return false if log.include? b
      return true if bfs(b,val+c,log+[b])
    end
end
def bbb
  bfs(1,0,[1])
end
if bbb
  puts $ans
else
  puts 'inf'
end