N, K = gets.split.map(&:to_i)
result = []

N.times do
  a, b = gets.split.map(&:to_i)

  if result[K - 1].nil? || a < result[K - 1]
    result.push(*[a] * b)
  end
end

puts result[K - 1]