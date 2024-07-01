n = gets.to_i
a = $stdin.read.split.map(&:to_i)
visited = Hash.new { false }
next_point = a[0]

n.times do
  if visited[next_point]
    puts(-1)
    exit
  end

  if next_point == 2
    puts(visited.length + 1)
    exit
  end

  visited[next_point] = true
  next_point = a[next_point - 1]
end

puts(-1)