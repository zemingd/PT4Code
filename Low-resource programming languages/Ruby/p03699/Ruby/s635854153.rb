
n=gets.to_i
dp=Array.new((n+1)*100,0)

dp[0]=1
mx=0
for i in 0..n-1 do
    num=gets.to_i
    x=mx
    (0..x).reverse_each do |i|
        if(dp[i]>0)
            dp[i+num]=1
            mx=[mx,i+num].max
        end
    end
end

ans=0
(0..mx).reverse_each do |i|
    if(dp[i]>0&&i%10>0)
        ans=i
        break
    end
end

puts ans