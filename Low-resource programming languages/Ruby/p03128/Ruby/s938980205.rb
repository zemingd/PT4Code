n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort.reverse
map = [0,2,5,5,4,5,6,3,7,6]
dp = Array.new(n+1,0)
1.upto(n) do |i|
  a.each do |x|
    if i-map[x] >= 0
      dp[i] = [dp[i-map[x]]+1,dp[i]].max
    end
  end
end
cnt = n
ans = []
dp[n].times do |i|
  a.each do |x|
    if dp[cnt-map[x]] == dp[cnt] - 1
      if i != dp[n]-1 || cnt-map[x] == 0
        ans << x
        cnt -= map[x]
        break
      end
    end
  end
end
ans.each do |x|
  print x
end
puts ""