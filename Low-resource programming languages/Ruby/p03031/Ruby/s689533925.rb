n, m = gets.split.map(&:to_i)

lamps = m.times.map do
  k, *s = *gets.split.map(&:to_i)
  s
end

lamps = lamps.zip(gets.split.map(&:to_i))

ans = (0..(2**n - 1)).map do |pattern|
  pattern = pattern.to_s(2).rjust(n, '0').chars.map(&:to_i)
  lamps.select do |(s, p)|
    s.map do |sw|
      pattern[sw-1]
    end.inject(:+) % 2 != p
  end.empty?
end.count(true)

puts ans
