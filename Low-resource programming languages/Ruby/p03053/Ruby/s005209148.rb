H,W = gets.split.map(&:to_i)

dp =  Array.new(H){Array.new(W, -1)}

search_range =[]

H.times do |i|
  grid = gets.chomp
  for j in 0..W-1 do
    if grid[j] == "#"
      dp[i][j] = 0
      search_range << [i,j]
    end
  end
end
max = 0

while !search_range.empty? do
  tmp = []
  search_range.each do |x,y|
    dx = 0
    dy = 1
    if x+dx >=0 && x+dx <=H-1 && y+dy >=0 && y+dy<=W-1 && dp[x+dx][y+dy] == -1
      dp[x+dx][y+dy] = dp[x][y] + 1
      max = dp[x+dx][y+dy] if max < dp[x+dx][y+dy]
      tmp << [x+dx, y+dy]
    end

    dx = 0
    dy = -1
    if x+dx >=0 && x+dx <=H-1 && y+dy >=0 && y+dy<=W-1 && dp[x+dx][y+dy] == -1
      dp[x+dx][y+dy] = dp[x][y] + 1
      max = dp[x+dx][y+dy] if max < dp[x+dx][y+dy]
      tmp << [x+dx, y+dy]
    end

    dx = 1
    dy = 0
    if x+dx >=0 && x+dx <=H-1 && y+dy >=0 && y+dy<=W-1 && dp[x+dx][y+dy] == -1
      dp[x+dx][y+dy] = dp[x][y] + 1
      max = dp[x+dx][y+dy] if max < dp[x+dx][y+dy]
      tmp << [x+dx, y+dy]
    end

    dx = -1
    dy = 0
    if x+dx >=0 && x+dx <=H-1 && y+dy >=0 && y+dy<=W-1 && dp[x+dx][y+dy] == -1
      dp[x+dx][y+dy] = dp[x][y] + 1
      max = dp[x+dx][y+dy] if max < dp[x+dx][y+dy]
      tmp << [x+dx, y+dy]
    end

  end
  search_range = tmp
end

puts max
