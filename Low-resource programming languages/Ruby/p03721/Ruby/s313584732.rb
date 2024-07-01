N, K = gets.split.map(&:to_i)
count_num = 0
result = nil

N.times do
  a, b = gets.split.map(&:to_i)

  if count_num + b >= K
    result = a
    break
  end

  count_num += b
end

puts result
