N, K = gets.split.map(&:to_i)

data = []

N.times do
  a, b = gets.split.map(&:to_i)
  data.concat([a] * (b <= K ? b : K))
  data.sort!
  data.pop(data.size - K) if 0 <= data.size - K
end

puts data[K-1]
