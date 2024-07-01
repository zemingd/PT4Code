n, m = gets.split.map(&:to_i)
w = n.times.map { gets.split.map(&:to_i) }.sort { |(a1, b1), (a2, b2)| b1 == b2 ? a2 <=> a1 : b2 <=> b1 }
ans = w.reduce(0) do |s, (a, b)|
  break(s) if m <= 0
  if a > m
    s
  else
    m -= 1
    s + b
  end
end
p ans
