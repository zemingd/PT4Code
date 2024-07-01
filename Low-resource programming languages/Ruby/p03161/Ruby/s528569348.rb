N,K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
dp=Array.new(N,0)
for i in 1...N
    if 1<=i && i<K
        dp[i]=(0..i-1).to_a.map{|j|dp[j]+(as[j]-as[i]).abs}.min
    else
        dp[i]=(i-K..i-1).to_a.map{|j|dp[j]+(as[j]-as[i]).abs}.min
    end
end
puts dp.last
