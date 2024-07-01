N, M, C = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
count = 0
N.times do
  as = []
  as = gets.split.map(&:to_i)
  sum = 0
  M.times do |i|
    sum += as[i] * bs[i]
  end
  sum += C
  count += 1 if sum > 0
end
puts count
