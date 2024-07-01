H,W = gets.split.map(&:to_i)
dp =  Array.new(H*W,-1)
search_range =[]

H.times do |i|
  grid = gets.chomp
  for j in 0..W-1 do
    if grid[j] == "#"
      dp[H*i+j] = 0
      search_range << [i,j]
    end
  end
end

max = 0

while !search_range.empty? do
  x, y = search_range.shift
  [[0,1],[0,-1],[1,0],[-1,0]].each do |dx, dy|
    next if x+dx <0 || x+dx >H-1 || y+dy < 0 || y+dy >W-1
    if dp[(x+dx)*H + y+dy] == -1
      tmp = dp[x*H+y] + 1
      dp[(x+dx)*H+y+dy] = tmp
      max = tmp if max < tmp
      search_range.push([x+dx, y+dy])
    end
  end
end

puts max
