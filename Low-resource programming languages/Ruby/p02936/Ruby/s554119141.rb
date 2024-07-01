if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  #require 'rbconfig';RUBY=File.join(RbConfig::CONFIG['bindir'],RbConfig::CONFIG['ruby_install_name'])
  require 'rubygems';RUBY=Gem.ruby
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},RUBY,$0)
end

N, Q = gets.chomp.split.map(&:to_i)

$tree = Array.new(N+1).map{Array.new}

(N-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  # a < bなので片方だけ入れる→駄目だった　どっちが親かはいってないため
  $tree[a-1] << b-1
  $tree[b-1] << a-1
end

$visited = Hash.new(false)


# クエリに順番は関係ない
# 1つの頂点に対してのものはまとめて良い
$ans = Array.new(N, 0)

Q.times do |i|
  p, x = gets.chomp.split.map(&:to_i)
  $ans[p-1] += x
end

# REはここより下
def dfs(vertex)
  return if $tree[vertex].empty?

  $tree[vertex].each do |v|
    next if $visited[v] == true
    $ans[v] = $ans[v] + $ans[vertex]
    $visited[v] = true
    dfs(v)
  end
end

$visited[0] = true
dfs(0)

puts $ans.join(' ')
