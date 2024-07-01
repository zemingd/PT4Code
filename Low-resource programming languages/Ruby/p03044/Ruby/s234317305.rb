def flip(color)
  if color == 0 then 1 else 0 end
end

n = gets.to_i
sides = (n-1).times.map { gets.split.map(&:to_i) }
sides_on = {}
sides.each do |side|
  u, v, w = side
  sides_on[u] ||= []
  sides_on[u] << side
  sides_on[v] ||= []
  sides_on[v] << [v, u, w]
end
visited = {}
arr = Array.new(n+1)
arr[1] = 0 # vertex 1 is white
queue = [1]

until queue.empty?
  u = queue.pop
  visited[u] = true
  sides = sides_on[u]
  if sides
    sides.each do |side|
      u, v, w = side
      unless visited[v]
        if w.even?
          arr[v] = arr[u]
        else
          arr[v] = flip(arr[u])
        end
        queue.push(v)
      end
    end
  end
end

1.upto(n) do |i|
  puts arr[i]
end
