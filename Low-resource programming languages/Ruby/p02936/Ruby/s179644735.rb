def dfs(i, x)
  @point[i] += x
  @g[i].each do |j|
    dfs(j, x)
  end
end

N,Q=gets.split.map(&:to_i)
AB=(N-1).times.map{gets.split.map(&:to_i)}.sort_by{|a,b|[a,b]}
PX=Q.times.map{gets.split.map(&:to_i)}

@g=Array.new(N){[]}
AB.each do |a,b|
  @g[a-1] << b-1
end
@point=Array.new(N,0)
PX.each do |p, x|
  dfs(p-1, x)
end
puts @point.join(" ")