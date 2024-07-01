n = gets.to_i
numbers = gets.split.map{|s| s.to_i}
max = 2**32
p0 = p1 = m0 = m1 = max

0.upto(max) do |b|
  p2 = m2 = 0
  numbers.each_with_index do |num, i|
    p2 += (num - (b+i+1)).abs
    m2 += (num - (-b+i+1)).abs
  end

  p0 = p2 if p2 < p0
  m0 = m2 if m2 < m0

  break if p2 - p1 == n && m2 - m1 == n
  break if p0 < p2 && m0 < m2

  p1 = p2
  m1 = m2
end