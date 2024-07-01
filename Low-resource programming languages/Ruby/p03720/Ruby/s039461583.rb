N, M = gets.split.map(&:to_i)

result = Hash.new(0)

M.times do
  a, b = gets.split.map(&:to_i)

  result[a] += 1
  result[b] += 1
end

[*1..N].each do |i|
  puts result[i]
end