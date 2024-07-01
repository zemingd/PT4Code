x,y,z,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
dp = a.product(b).map{|i, j| i + j}.sort.reverse
dp=dp[0,k] if dp.size > k
dp = dp.product(c).map{|i, j| i + j}.sort.reverse
puts dp[0,k].join("\n")
