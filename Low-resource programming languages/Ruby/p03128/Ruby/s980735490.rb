require 'set'
n,m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse
CONSUMES = [nil,2,5,5,4,5,6,3,7,6]
uses = as.map{|i| CONSUMES[i] }.to_set.sort

dp = [0]
1.upto(n) do |i|
  dp[i] = uses.map{|use| (i-use>=0 ? dp[i-use] : -100)+1 }.max
end

result = 0
i = n
while i > 0
  as.each do |a|
    if i-CONSUMES[a] >= 0 && dp[i-CONSUMES[a]]+1 == dp[i]
      result = result*10 + a
      i -= CONSUMES[a]
      break
    end
  end
end
puts result
