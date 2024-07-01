Item=Struct.new(:w,:v)
n,m=gets.split.map(&:to_i)
dp=Array.new(n+1){[0]*10000000}

items=[]

#dpループ
for i in 0..n-1
    items<<Item[*gets.split.map(&:to_i)]
    item=items[i]
    for w in 0..m
        #各状況における重さを全列挙し、選ばない場合は前の状況そのまま、選んだ
        #場合はその重さから荷物を引いた状態にvalueをたす
        if w>=item.w
            #選ばない場合→dp[i][w]がそのまま遷移　、選んだ場合→dp[i][w]
            dp[i+1][w]=[dp[i][w-item.w]+item.v,dp[i][w]].max
        else
         dp[i+1][w]=dp[i][w]
         end
    end
 end
    puts dp[n][m]