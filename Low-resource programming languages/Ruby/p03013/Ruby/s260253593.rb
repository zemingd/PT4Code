n, m = gets.split.map(&:to_i)
as   = m.times.map{ gets.to_i }

dp = Array.new(n+1){0}
dp[0]= 1

0.upto(n-1) do | i |
  next if dp[i] == 0
  dp[i+1] += 1 unless as.include? i+1
  break if i==n-1
  dp[i+2] += 1 unless as.include? i+2
end

# 0が2個続いたら除外
before = 1
dp.each do | d |
  if d == 0 && before ==0
    p 0
    exit
  end
  before = d
end

# 0が出たところで配列を区切る.
dp = dp.join.split('0')
sizes = []
dp.map{|d|sizes << d.size}

def fibo(n)
  return 0 if n == 0
  return 1 if n == 1
  ary = [0, 1]

  2.upto(n) do | i |
    tmp = ary[i-1] + ary[i-2]
    ary.push(tmp)
  end
  return ary
end

fibo = fibo(sizes.max)

ans = 1
sizes.each do | s |
  ans = ans * fibo[s]
end
p ans%1000000007