N,Q=gets.split.map(&:to_i)
AB=(N-1).times.map{gets.split.map(&:to_i)}.sort_by{|a,b|[a,b]}
PX=Q.times.map{gets.split.map(&:to_i)}
g=Array.new(N)
AB.each do |a, b|
  g[b-1] = a-1
end

ans=Array.new(N,0)
PX.each do |p ,x|
  ans[p-1] += x
end

(1..N-1).each do |i|
  ans[i] += ans[g[i]]
end
puts ans.join(" ")