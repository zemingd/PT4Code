n = gets.to_i

u = []
v = []
$w = []

(n-1).times do |i|
  u[i], v[i], $w[i] = gets.split.map(&:to_i)
end

$dist = Array.new(n, 0)
$visited = Array.new(n,false)
$visited[0] = true
$graph = Hash.new{|h,k| h[k] = [-1,0]}

#隣接行列 要素は行き先と距離
0.upto(n-2) do |i|
  $graph[u[i]-1] = [v[i]-1, $w[i]]
  $graph[v[i]-1] = [u[i]-1, $w[i]]
end

p $graph

#深さ優先探索
def dfs(v)
  if !$visited.include?(false)
    return
  else
    $graph.each_with_index do |(from, (to,wgt)), idx|
      # p to
      # p wgt
      # p from
      if !$visited[to]
        $visited[to] = true
        $dist[to] = $dist[from] + wgt
        dfs(to)
      end
    end
  end
end

dfs(0)

n.times do |i|
  if $dist[i] %2 == 0
    puts "0"
  else
    puts "1"
  end
end
