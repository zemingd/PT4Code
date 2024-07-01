# https://atcoder.jp/contests/abc125/tasks/abc125_d
n = gets.to_i
$nums = gets.split.map(&:to_i)

DP = [Array.new(10**7, nil), Array.new(10**7, nil)]
DP[0][0] = 0
DP[1][0] = -1 * 10**9

1.upto(n) do |idx|
  num = $nums[idx - 1]
  [0, 1].each do |reversed|
    if reversed == 1
      DP[reversed][idx] = [ DP[0][idx - 1] - num, DP[1][idx - 1] + num ].max
    else
      DP[reversed][idx] = [ DP[0][idx - 1] + num, DP[1][idx - 1] - num ].max
    end
    # puts "DP[#{reversed}][#{idx}] = #{DP[reversed][idx]}"
  end
end

puts DP[0][n]
