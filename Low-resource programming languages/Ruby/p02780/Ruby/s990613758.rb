N, K = gets.split.map(&:to_i)
p = gets.split.map { |i| (i.to_i + 1) / 2.0 }

tmp = max = p[0...K].inject(:+)

(N - K).times do |i|
  tmp = tmp - p[i] + p[K + i]
  max = tmp if max < tmp
end

puts max