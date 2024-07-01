if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
end

def dfs(i)
  @point[i] += @v
  @g[i].each do |j|
    dfs(j)
  end
end

N,Q=gets.split.map(&:to_i)
AB=(N-1).times.map{gets.split.map(&:to_i)}.sort_by{|a,b|[a,b]}
=begin
N,Q=2*10**5, 2*10**5
ab=[]
(N-1).times do
  t = rand(0..N-3)
  ab << [t,t+1]
end
AB = ab.sort_by{|p,q|[p,q]}
=end

px=Hash.new(0)
Q.times do
  p, x = gets.split.map(&:to_i)
  #p, x = [rand(1..N-1), rand(1..10**4)]
  px[p-1] += x
end

@g=Array.new(N){[]}
AB.each do |a, b|
  @g[a-1] << b-1
end

@point=Array.new(N,0)
px.each do |p, x|
  @v = x
  dfs(p)
end

puts @point.join(" ")