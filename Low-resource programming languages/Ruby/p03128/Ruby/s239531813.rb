n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
map = [0,2,5,5,4,5,6,3,7,6]
dp = Array.new(n+11,0)
a.each do |x|
  dp[map[x]] = [dp[map[x]],x].max
end
n.times do |i|
  a.each do |x|
    if dp[i] != 0
      bit = dp[i].to_s.length
      dp[i+map[x]] = [dp[i]*10+x,x*(10**bit)+dp[i]].max
    end
  end
end
puts dp[n]