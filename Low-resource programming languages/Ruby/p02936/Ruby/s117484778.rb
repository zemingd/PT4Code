if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
end

def dfs(i, p=-1)
  return if @used[i]
  @used[i] = true
  @g[i].each do |j|
    dfs(j, i)
  end
  @parent[i] = p
  @zyunban << i
end

N,Q=gets.split.map(&:to_i)
AB=(N-1).times.map{gets.split.map(&:to_i)}.sort_by{|a|a[0]}
PX=Q.times.map{gets.split.map(&:to_i)}

@g=Array.new(N){[]}
AB.each do |a, b|
  @g[a-1] << b-1
  @g[b-1] << a-1
end
@used=Array.new(N, false)
@parent=Array.new(N)
@zyunban=[]
dfs(0)
@zyunban.reverse!
@zyunban.shift

ans=Array.new(N, 0)
PX.each do |p, x|
  ans[p-1] += x
end

@zyunban.each do |i|
  ans[i] += ans[@parent[i]]
end

puts ans.join(" ")