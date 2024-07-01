N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
DP = Array.new(N, 10000)
DP[0] = 0
(1...N).each {|i|
  min = 10000
  ([0, i - K].max...i).each{|j|
    min = DP[j] + (H[j] - H[i]).abs if DP[j] + (H[j] - H[i]).abs < min
  }
  DP[i] = min
}
p DP[N - 1]