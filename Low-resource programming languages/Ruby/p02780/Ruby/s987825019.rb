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
last = N - K
cache = 0
expected[0..(K-1)].each {|elm| cache += elm}
max = cache

for i in (1..last)
  cache -= expected[i - 1]
  cache += expected[i + K-1]
  max = cache if max < cache
end
puts max
