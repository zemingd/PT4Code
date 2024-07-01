n = gets.to_i

parent = [-1] * (n+1)

(n-1).times do |i|
  u,v,w = gets.split.map(&:to_i)
  if w % 2 == 1
    if parent[u] == 0
      parent[v] = 1
    elsif parent[u] == 1
      parent[v] = 0
    elsif parent[v] == 0
      parent[u] = 1
    elsif parent[v] == 1
      parent[u] = 0
    else
      parent[u] = 0
      parent[v] = 1
    end
  end
end

n.times do |i|
  if parent[i+1] == -1
    p 0
  else
    p parent[i+1]
  end
end