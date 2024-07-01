n, m, c = gets.split.map(&:to_i)
aryB    = gets.split.map(&:to_i)
ans     = 0

n.times do |i|
  sum = 0
  aryA = gets.split.map(&:to_i)
  m.times do |j|
    sum += aryA[j] * aryB[j]
  end
  if sum + c > 0
    ans += 1
  end
end

puts ans
