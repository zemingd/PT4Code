n, k = gets.split.map(&:to_i)

ans = 0

1.upto(n) do |score|
  p = 0.5

  while score < k
    score *= 2
    p *= 0.5
  end
  p *= 2

  ans += p / n
end

puts ans
