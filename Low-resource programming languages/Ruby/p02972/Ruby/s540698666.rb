N = gets.chomp.to_i
A = [nil] + gets.chomp.split(" ").map(&:to_i)

mid_i = N / 2 + 1
result = {}
(N).downto(mid_i) do |i|
  result[i] = A[i]
end

indexes = (1..(mid_i - 1)).map do |i|
  (2..(N / i)).map { |v| v * i }
end

(mid_i - 1).downto(1) do |i|
  v = indexes[i-1].map {|j| result[j] }.inject(&:+) % 2
  result[i] = (A[i] ^ v)
end
n = result.values.inject(&:+)
puts n
puts result.select { |k, v| v == 1 }.keys.join(" ") if n > 0
