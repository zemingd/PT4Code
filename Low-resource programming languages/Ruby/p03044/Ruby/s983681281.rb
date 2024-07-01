N = gets.to_i
edges = N.times.map{ [] }
$<.each{|s|
  from, to, dst = s.split.map &:to_i
  edges[from-1] << [to-1, dst]
  edges[to-1] << [from-1, dst]
}

visited = [false] * N

f = ->from, dst{
  return if visited[from]
  visited[from] = dst%2
  edges[from].each{|to, dst1|
    f[to, dst + dst1]
  }
}
f[0, 0]

puts visited
