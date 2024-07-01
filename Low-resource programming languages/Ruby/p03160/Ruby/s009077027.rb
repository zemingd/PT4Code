
n=gets.to_i
h=gets.split.map(&:to_i)
#大きい数をとりあえずおいておく
INF=10000000

#題よりとりあえず大きい値をdpテーブルに入れる(箱のサイズはとりあえず大きくしておく)
dp=Array.new(n,INF)


#初期条件
dp[0]=0

#ループ
for i in 1..n-1
    if i==1
        dp[i]=(h[i]-h[i-1]).abs
    elsif i>1
        dp[i]=[dp[i-2]+(h[i-2]-h[i]).abs,dp[i-1]+(h[i-1]-h[i]).abs].min
    end
    
end
p dp[-1]
