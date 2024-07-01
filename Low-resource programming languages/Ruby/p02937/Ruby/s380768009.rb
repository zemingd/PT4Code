s = gets.chomp.chars.map{|v|v.ord - ?a.ord}
n = s.size
t = gets.chomp.chars.map{|v|v.ord - ?a.ord}

dp = Array.new(n)
memo = Array.new(26,-1)
(n-1).downto(0) do |i|
  memo[s[i]] = i
  dp[i] = memo.dup
end

# tの文字でsに含まれないものがあれば解なし
if (t - s).size > 0
  puts -1
  exit
end

page = 0
i = 0 # sの位置
j = 0 # tの位置
while j < t.size
  if n <= i 
    i = 0
    page += 1
  end

  ni = dp[i][t[j]]
  if ni == -1
    page += 1
    i = 0
  else
    i = ni + 1
    j += 1
  end
end

ans = page * n + i
puts ans
