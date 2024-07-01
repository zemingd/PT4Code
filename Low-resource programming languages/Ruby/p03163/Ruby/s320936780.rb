lines = $stdin.read
array = lines.split("\n")
N,W = array[0].split(" ").map(&:to_i)
Item = Struct.new(:w, :v)

items = [Item.new(0,0)]
array[1..array.length].each do |s|
  item = Item.new
  item.w, item.v = s.split(" ").map(&:to_i)
  items << item
end

# 二次元dp
dp = Array.new(N+1).map{Array.new(W+1, 0)}
for i in 1...N+1
  for j in 1...W+1
    if j < items[i].w
      dp[i][j] = dp[i-1][j]
    else
      dp[i][j] = [dp[i-1][j], dp[i-1][j-items[i].w] + items[i].v].max
    end
  end
end

puts dp.max.max