N = gets.to_i
H = gets.split.map(&:to_i)
DP = Array.new(N, 10000)
DP[0] = 0
DP[1] = (H[1] - H[0]).abs

(N - 2).times {|i|
  DP[i + 2] = [
    DP[i] + (H[i + 2] - H[i]).abs,
    DP[i + 1] + (H[i + 2] - H[i + 1]).abs
  ].min
}

p DP[N - 1]
