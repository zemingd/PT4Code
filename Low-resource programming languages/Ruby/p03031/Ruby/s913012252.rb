# スイッチ数, 電球数
n, m = gets.chomp.split(' ').map(&:to_i)

def ep(o)
  STDERR.puts o.inspect
end

def to_a(array)
  result = 0
  for i in 0..array.reverse.length-1
    result = result << 1
    result += array[i]
  end
  result
end

sls = Array.new(n){|i| Array.new(m, 0)}
for i in 0..m-1 do
  _, *ss = gets.chomp.split(' ').map(&:to_i)
  for s in ss do
    sls[s-1][i] = 1
  end
end

ep sls.inspect

dp = Array.new(2**m, 0)
dp[0] = 1
ep dp

for sl in sls do
  dp2 = dp.clone
  sum = 0
  ep sl
  sum = to_a(sl)
  ep sum
  # OFFの場合
  #   -> なにもしない
  # ONの場合
  for x in 0..dp.length-1 do
	dp2[sum^x] += dp[x]
  end
  dp = dp2
  ep dp
end
ps = gets.chomp.split(' ').map(&:to_i)

ep to_a(ps)
print dp[to_a(ps)]
print "\n"
