N = gets.strip.to_i
W = gets.strip.split(' ').map(&:to_i)
c = nil
0.upto(N-2).each do |n|
  s1 = W[0..n]
  s2 = W[n+1..(W.size - 1)]
  sub = (s1.inject(&:+) - s2.inject(&:+)).abs
  c = sub if c == nil || c > sub
end
puts c