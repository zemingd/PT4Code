n, k = gets.split.map(&:to_i)

ans = 0

1.upto(n) do |score|
  c = 0

  until score >= k
    score *= 2
    c += 1
  end

  p = 0.5 ** c
  ans += p / n
end

puts ans
