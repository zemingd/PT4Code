# A - Frog 1
# https://atcoder.jp/contests/dp/tasks/dp_a

N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

@dp = Array.new(N+3) { 0 }
(0...N).each do |i|
  if i == 0
   @dp[i] = 0
   next
  elsif i == 1
   @dp[i] = @dp[i-1] + (H[i-1] - H[i]).abs
   next
  else
    @dp[i] = [@dp[i-1] + (H[i-1] - H[i]).abs,
              @dp[i-2] + (H[i-2] - H[i]).abs].min
  end
end

puts @dp[N-1]
