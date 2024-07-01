weight=[]
value=[]
n,m=gets.split.map(&:to_i)
dp=Array.new(n+1,0)
for i in 0..n+1
    dp[i]=Array.new(1000000,0)
end

items=[]

#dpループ
for i in 0..n-1
    weight[i],value[i]=gets.split.map(&:to_i)
    item=[weight[i],value[i]]
    for w in 0..m
        #各状況における重さを全列挙し、選ばない場合は前の状況そのまま、選んだ
        #場合はその重さから荷物を引いた状態にvalueをたす
        if w>=item[0]
            #選ばない場合→dp[i][w]がそのまま遷移　、選んだ場合→dp[i][w]
            dp[i+1][w]=[dp[i][w-item[0]]+item[1],dp[i][w]].max
        else
         dp[i+1][w]=dp[i][w]
         end
    end
 end
    puts dp[n][m]