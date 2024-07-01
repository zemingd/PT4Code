n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

max_digit = (10**12).to_s(2).size
digit = m.to_s(2).size
upper = max_digit + 1 - digit
dp = Array.new(max_digit + 1) { Array.new(2) { 0 } }
one_count = Array.new(max_digit) { 0 }
a.each { |e| max_digit.times { |i| one_count[i] += e[max_digit - 1 - i] } }

max_digit.times do |i|
  0.upto(i < upper ? 0 : 1) do |j|
    d = m[max_digit - 1 - i]
    0.upto(j == 0 ? d : 1) do |k|
      tmp = k == 0 ? one_count[i] : n - one_count[i]
      idx = j == 1 || k < d ? 1 : 0
      dp[i + 1][idx] = [dp[i + 1][idx], dp[i][j] + tmp * 2**(max_digit - 1 - i)].max
    end
  end
end

puts [dp[max_digit][0], dp[max_digit][1]].max
