io = STDIN
n=io.gets.to_i
$dist={}
$ans=Array.new(n+1)
$tree=Hash.new{|h,k|h[k]=[]}
(n-1).times.each do 
  u,v,w=io.gets.split.map(&:to_i)
  $dist[[u,v]]=w.even? ? 0 : 1
  $dist[[v,u]]=w.even? ? 0 : 1
  $tree[u]<<v
  $tree[v]<<u
end
$queue=[]
def bfs(root)
  $queue<<root
  $ans[root]=0
  while node=$queue.shift
    $tree[node].each do |leaf|
      next if $ans[leaf]
      $ans[leaf]=$ans[node]^$dist[[node,leaf]]
      $queue << leaf
    end
  end
end
bfs($tree.keys.first)
puts $ans[1..-1]
