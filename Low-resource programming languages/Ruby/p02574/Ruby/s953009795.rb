require 'prime'
def max(a,b); a > b ? a : b; end
N = gets.to_i
A = gets.split.map(&:to_i)
Amax = A.max

dp = Array.new(Amax + 1, 0)
A.each do |a|
  dp[a] += 1
end

ans = Prime.each(Amax).inject(-1) do |s, i|
  cnt = 0
  j = i
  while j <= Amax
    cnt += dp[j]
    j += i
  end
  max(s, cnt)
end

if ans <= 1
  puts "pairwise coprime"
elsif ans < N
  puts "setwise coprime"
else
  puts "non coprime"
end
