def flip(color)
  if color == 0 then 1 else 0 end
end

n = gets.to_i
sides = (n-1).times.map { gets.split.map(&:to_i) }.shuffle
arr = Array.new(n+1)
arr[1] = 0 # vertex 1 is white

until sides.empty?
  side = sides.shift
  u, v, w = side
  if arr[u]
    if w.even?
      arr[v] = arr[u]
    else
      arr[v] = flip(arr[u])
    end
  elsif arr[v]
    if w.even?
      arr[u] = arr[v]
    else
      arr[u] = flip(arr[v])
    end
  else
    sides.push(side)
  end
end

1.upto(n) do |i|
  puts arr[i]
end
