n,xx=gets.split.map(&:to_i)
x=gets.split.map(&:to_i)
c = (x[0] - xx).abs
(n-1).times do |i|
  c = c.gcd((x[i+1] - xx).abs)
end
p c
