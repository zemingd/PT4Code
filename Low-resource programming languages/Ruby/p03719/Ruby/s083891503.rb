N, K = gets.split.map(&:to_i)
result = []

N.times do
  a, b = gets.split.map(&:to_i)

  if result[K - 1].nil?
    if (K - result.length) < b
      result.push(*[a] * (K - result.length))
    else
      result.push(*[a] * b)
    end
  elsif a < result[K - 1]
    less_idx = result.rindex { |n| n <= a }
    result.insert(less_idx + 1, *[a] * (K - (rindex + 1)))
  end
end

puts result[K - 1]
