n, m = gets.split.map(&:to_i)
s = Array.new(m, 0)
m.times do |i|
  b = gets.split.map(&:to_i)[1..-1]
  b.each do |x|
    s[i] |= (1 << (x - 1))
  end
end
p = gets.split.map(&:to_i)


bits = Array.new(2 ** n, 0)
(2 ** n).times do |x|
  y = x
  while y != 0
    bits[x] += 1 if (y & 1) != 0
    y = y >> 1
  end
end

ans = 0
(2 ** n).times do |x|
  c = 0
  m.times do |i|
    c += 1 if bits[x & s[i]] % 2 == p[i] 
  end
  ans += 1 if c == m
end
puts ans

