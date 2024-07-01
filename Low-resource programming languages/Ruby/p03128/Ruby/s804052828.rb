# https://atcoder.jp/contests/abc118/tasks/abc118_d
=begin
20 4
3 7 8 4
777773

101 9
9 8 7 6 5 4 3 2 1
71111111111111111111111111111111111111111111111111

15 3
5 4 6
654
=end
N, _M = gets.split.map(&:to_i)
valid_nums = gets.split
MATCH_NUM = {
  '1' => 2,
  '2' => 5,
  '3' => 5,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 3,
  '8' => 7,
  '9' => 6
}.freeze

dp = ['']

1.step(N) do |i|
  valid_nums.each do |str|
    next if i < MATCH_NUM[str] || !dp[i - MATCH_NUM[str]]
    if (dp[i - MATCH_NUM[str]] + str).size == dp[i]&.size.to_i
      dp[i] = dp[i - MATCH_NUM[str]] + str > dp[i] ? dp[i - MATCH_NUM[str]] + str : dp[i]
    elsif (dp[i - MATCH_NUM[str]] + str).size > dp[i]&.size.to_i
      dp[i] = dp[i - MATCH_NUM[str]] + str
    end
  end
end

p dp[N].to_i
