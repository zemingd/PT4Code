n, k = gets.split.map(&:to_i)

ans = 0

1.upto(n) do |i|
  orig = k / i
  c = 0

  while orig > 0
    orig /= 2
    c += 1
  end

  p = 0.5 ** c
  ans += p / n
end

puts ans
