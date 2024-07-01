l, r = gets.split.map &:to_i
p 0 if r-l>=2019
ans = Float::INFINITY
(l...r).each do |i|
  (i+1..r).each do |j|
    m = i*j%2019
    ans = m if m < ans
  end
end
p ans