n,m = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
dp = Array.new(n+1,0)
st = [0,2,5,5,4,5,6,3,7,6]
num.sort!
stick = []
m.times {|i| stick.push(st[num[i]])}
for i in 2..n
  inst = 0
  for j in 0..m-1
    if stick[j] <= i && inst < dp[i-stick[j]]+1
      inst = dp[i-stick[j]]+1
    end
  end
  dp[i] = inst
end
ans = []
count = 1
for i in 1..dp[-1]-1
  for j in 1..m
    if count+stick[-j] <= n && dp[-count] == dp[-count-stick[-j]]+1
      count += stick[-j]
      ans.push(num[-j])
      break
    end
  end
end
for i in 1..m
  if count+stick[-i] == n+1
    ans.push(num[-i])
  end
end
puts ans.join
