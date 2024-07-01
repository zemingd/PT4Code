if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
end

def solve(node)
  $used[node] = true
  $g[node].each do |k|
    next if $used[k]
    $points[k] += $points[node]
    solve(k) unless $used[k]
  end
end

n, q = gets.split.map(&:to_i)
$used = Array.new(n,false)

$g = Array.new(n){[]}
(n-1).times do
  a,b = gets.split.map{ |i| i.to_i - 1 }
  $g[a].push(b)
  $g[b].push(a)
end

$points = Array.new(n,0)
q.times do |i|
  node,x = gets.split.map(&:to_i)
  node -= 1
  $points[node] += x
end

solve(0)

puts $points.join(' ')