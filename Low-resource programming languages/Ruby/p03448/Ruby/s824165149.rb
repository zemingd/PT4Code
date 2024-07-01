a, b, c, x = STDIN.read.lines.map(&:to_i)
a += 1
b += 1
c += 1
ans = 0
a.times do |i|
  b.times do |j|
    c.times do |k|
      ans += 1 if i*500+j*100+k*50 == x
    end
  end
end
puts ans
