N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
match = { 1 => 2, 2 => 5, 3 => 5, 4 => 4, 5 => 5, 6 => 6, 7 => 3, 8 => 7, 9 => 6 }
def max(s1, s2)
  s1 > s2 ? s1 : s2
end

# dp[i]: i本使ってできる最大の数
dp = Array.new(N+1) {0}
(N+1).times do |i|
  A.each do |a|
    if i-match[a] >= 0
      # if (dp[i-match[a]]*10 + a).to_s.chars.map(&:to_i).inject(0){|sum, x| sum + match[x]} == i
        dp[i] = max(dp[i], dp[i-match[a]]*10 + a)
      # end
    end
  end
end
p dp[N]