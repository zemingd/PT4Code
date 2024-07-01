N,x=gets.split.map &:to_i
a=gets.split.map(&:to_i).sort
m=(a+[x]).inject(:gcd)
x/=m
a=a.map{|i|i/m}
dp=[[0,[]]]
1.upto(x){|i|
  #p dp
  maxc=0
  maxi=-1
  for j in 0...a.size do
    if i>=a[j] && maxc<=dp[i-a[j]][0] then
      maxc=dp[i-a[j]][0]+((dp[i-a[j]][1].include?(j)) ? 0 : 1)
      maxi=j
    end
  end
  #p maxc,maxi
  dp<<[maxc,dp[i-a[maxi]][1]+[maxi]]
}
p dp[-1][0]