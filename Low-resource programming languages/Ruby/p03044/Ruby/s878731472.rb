# N, K = gets.chomp.split.map(&:to_i)
N = gets.chomp.to_i
Graph = {}
(N-1).times do 
  u, v, w = gets.chomp.split.map(&:to_i)
  u -= 1
  v -= 1
  Graph[u] ||= []
  Graph[u] << [v, w]
  Graph[v] ||= []
  Graph[v] << [u, w]
end

Colors = Array.new(N, -1)  # -1 is unknown. 0 is white, 1 is black.

def traverse(before, now)
  color = Colors[now] # current color
  
  (Graph[now] || []).each do |(v, w)|
    if (before == v)  # Already visited
      next
    end
    if (Colors[v] >= 0)  # Already visited
      next
    end
    
    if (w % 2 == 0)  # even, so set same color
      Colors[v] = color
    else  # odd, so set different color
      Colors[v] = (1 - color)
    end
    traverse(now, v)
  end
end

0.upto(N-1).each do |i|
  if (Colors[i] >= 0)
    next  # Already visited
  end
  Colors[i] = 0  # root is white
  traverse(-1, i)
end

Colors.each do |color|
  p color
end
