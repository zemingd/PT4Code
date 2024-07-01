n = gets.to_i
a = n.times.map { gets.to_i - 1 }

b = 0
count = 0
visited = Hash.new
loop do
  break if b == 1
  visited[b] = true

  if visited[a[b]]
    count = -1
    break
  end

  b = a[b]
  count += 1
end

puts count