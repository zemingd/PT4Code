lines = []
while line = gets
    lines << line.chomp.split(' ')
end

H = lines[0][0].to_i
W = lines[0][1].to_i

horizontal = []
for i in 1..H do
  horizontal.push([])
  j = 1
  while j <= W do
    if lines[i][0][j-1] == "." then
      count = 1
      now = j
      loop do
        if lines[i][0][now] == "." and now <= W then
          count += 1
          now += 1
        else
          break
        end
      end
      count.times do |num|
        horizontal[i-1].push(count)
        j += 1
      end
    else
      horizontal[i-1].push(0)
      j += 1
    end
  end
end
    
vertical = []
for i in 1..W do
  vertical.push([])
  j = 1
  while j <= H do
    if lines[j][0][i-1] == "." then
      count = 1
      now = j
      loop do
        if now < H and lines[now+1][0][i-1] == "." then
          count += 1
          now += 1
        else
          break
        end
      end
      count.times do |num|
        vertical[i-1].push(count)
        j += 1
      end
    else
      vertical[i-1].push(0)
      j += 1
    end
  end
end

ans = 1
for i in 1..H do
  for j in 1..W do
    light = horizontal[i-1][j-1] + vertical[j-1][i-1] - 1
    if light > ans then
      ans = light
    end
  end
end
  
puts ans