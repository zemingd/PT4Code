n = gets.to_i
dp = [0]*(10**5+1)
a = gets.split.map(&:to_i)
sum = a.inject(:+)

a.each do |i|
    dp[i]+=1
end

#p dp

q = gets.to_i
q.times do
    i,j = gets.split.map(&:to_i)
    sum += dp[i]*(j-i)
    dp[j] += dp[i]
    dp[i]=0
    
    p sum
end

