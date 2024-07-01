N, K = gets.split.map(&:to_i)
p = gets.split.map(&:to_f).map { |i| (1..i).inject(:+) / i }
max = 0

0.upto(N - K) do |i|
  max = [max, p[i...(i + K)].inject(:+)].max
end

puts max