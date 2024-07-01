N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

#dp[n] : 丁度n本のマッチを使って作れる整数で最大のもの
# もし、n本で数字が作れるならば、n+f(m)本使ったものも作れる。
# ここでf(m)はマッチ棒で数字mを作るときに必要なマッチ棒の本数
# 遷移式はdp[n+f(m)] = [dp[n+f(m)].to_s, dp[n].to_s + m.to_s].max

dp = Array.new(N+10){-1}

def f(m)
  table = [2,5,5,4,5,6,3,7,6]

  return table[m-1]
end

def max(s1,s2)
  tmp = s1.to_i
  if s2.length > s1.length
    tmp = s2.to_i
  elsif s2.to_i > s1.to_i
    tmp = s2.to_i
  end
  return tmp
end

dp[0] = 0

N.times do |n|
  next if dp[n] == -1
  A.each do |m|
    dp[n+f(m)] = [dp[n+f(m)], (dp[n].to_s + m.to_s).to_i].max
  end
end

p dp[N]