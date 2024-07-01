N,m = gets.split.map(&:to_i)
g = Array.new(N+1) {[]}

m.times do
  s,e,weight = gets.split.map(&:to_i)
  g[s].push [e,weight]
end

def dfs(path, g, total)
  if path.last == N
    if g[path.last].any? {|next_p, weight| path.include? next_p}
      # cycle
      puts 'inf'
      exit 0
    end
      
    return total
  end
    
  g[path.last].map do |next_p, weight|
    if path.include? next_p
      # cycle
      puts 'inf'
      exit 0
    end
    
    dfs([*path, next_p], g, total + weight)
  end.max.to_i
end

puts dfs([1], g, 0)