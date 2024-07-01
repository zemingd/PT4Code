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

dxy = [
  [0,1],
  [0,-1],
  [1,0],
  [-1,0]
]
max = 0

while !search_range.empty? do
  tmp = []
  search_range.each do |x,y|
    dxy.each do |dx, dy|
      if x+dx >=0 && x+dx <=H-1 && y+dy >=0 && y+dy<=W-1 && dp[x+dx][y+dy] == -1
        dp[x+dx][y+dy] = dp[x][y] + 1
        max = dp[x+dx][y+dy] if max < dp[x+dx][y+dy]
        tmp << [x+dx, y+dy]
      end
    end
  end
  search_range = tmp
end

puts max
