lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

access = []
for i in 1..N do
  access[i-1] = []
end

for i in 1..N-1 do
  from = lines[i][0]
  to = lines[i][1]
  weight = lines[i][2]
  access[from-1].push([to,weight])
  access[to-1].push([from,weight])
end

visited = []
color = []
for i in 1..N do
  visited[i-1] = false
  color[i-1] = 0
end

target = [1]
visited[0] = true
color[0] = 1
while target != [] do
  i = target.pop
  access[i-1].each do |num|
    j = num[0]
    weight = num[1]
    if visited[j-1] == false then
      color[j-1] = (color[i-1] + weight) % 2
      target.push(j)
      visited[j-1] = true
    end
  end
end
  
puts color