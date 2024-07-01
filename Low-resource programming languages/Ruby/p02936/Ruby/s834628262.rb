n, q = gets.split().map(&:to_i)
$graph = Array.new(n).map{Array.new()}
$seen = []
$ans = Array.new(n, 0)

(n-1).times do
  a, b = gets.split().map(&:to_i)
  $graph[a-1] << b-1
  $graph[b-1] << a-1
end

def dfs(root, point)
  $seen[root] = true
  $ans[root] += point
  point = $ans[root]
  $graph[root].each do |i|
    next if $seen[i]
    dfs(i, point) 
  end
end

q.times do 
  root, point = gets.split().map(&:to_i)
  $ans[root-1] += point
end

dfs(0,0)

puts $ans.join(' ')