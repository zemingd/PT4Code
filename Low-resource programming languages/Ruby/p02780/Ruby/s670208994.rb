N,K = gets.split.map(&:to_i)

ary = gets.split.map(&:to_i)
expected = []
ary.map do |pi|
  total = 0
  1.upto(pi) do |v|
    total += v
  end
  expected << total.to_f / pi
end
max = 0
last = N - K
cache = {}

cache = 0
K.times do |n|
  cache += expected[0 + n]
end

max = cache if max < cache

for i in (1..last)
  cache -= expected[i - 1]
  cache += expected[i + K-1]
  max = cache if max < cache
end
puts max