# B - Frog 2
# https://atcoder.jp/contests/dp/tasks/dp_

(N, K) = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

@dp = Array.new(N+3) { 0 }
(0...N).each do |i|
  if i == 0
    @dp[i] = 0
    next
  else
    cost = []
    (1..K).each do |j|
      if i >= j
        cost << @dp[i-j] + (H[i-j] - H[i]).abs
      else
        break
      end
    end

    @dp[i] = cost.min
  end
end

puts @dp[N-1]
