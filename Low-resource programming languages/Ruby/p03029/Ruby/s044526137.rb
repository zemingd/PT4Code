n = gets.to_i
ps = gets.split.map(&:to_i)
r = 0
(1..(n-1)/2).each do |d|
  s = 0
  d.step(n-2, d).each do |i|
    j = n - i - 1
    break if (j == i || j == i - d || j <= d)
    s += ps[i] + ps[j]
    r = s if (s > r)
  end
end
puts(r)
