n, _w = gets.split.map(&:to_i)
wv = []
 
ans = 0
dp = (n + 1).times.map{Hash.new(0)}
dp[0] = { 0 => 0 }
n.times do |i|
  w, v = gets.split.map(&:to_i)
  dp[i].each do |key, value|
    if key + w <= _w
      dp[i + 1][key + w] = value + v
      ans = value + v if ans < value + v
    end
    dp[i + 1][key] = value
  end
end
 
puts ans
