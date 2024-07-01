Item = Struct.new(:w, :v)
 
n, w = gets.split.map(&:to_i)
items = n.times.map {Item[*gets.split.map(&:to_i)]}
 
# dp[i][sum_w]
dp = Array.new(w+1, 0)
dp1 = Array.new(w+1, 0)
#dp = (n+1).times.map {Array.new(w+1, 0)}
(1..n).each do |i|
    item = items[i-1]
    (0..w).each do |u|
        dp[u] = [
            u >= item.w ? dp1[u-item.w] + item.v : 0,
            dp1[u]
        ].max
    end
    #dp1に前の重さを記録しておく
    dp, dp1 = dp1,dp
end
 
puts dp1[w]