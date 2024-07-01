N, M = gets.split.map(&:to_i)

_, *ans = gets.split.map(&:to_i)
(N - 1).times do
  k, *array = gets.split.map(&:to_i)
  ans &= array
end

puts ans.size
