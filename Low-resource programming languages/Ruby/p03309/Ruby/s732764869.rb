N = gets.to_i
A = gets.split.map &:to_i
(0...N).each do |i|
  A[i] -= i+1
end
A.sort!

def sunuke(b)
  (0...N).map do |i|
    (A[i]-b).abs
  end.inject(&:+)
end


l = 0
r = N
m = (l+r)/2
while l!=m
  m = (l+r)/2
  sm = sunuke(m)
  if sunuke(m-1)<sm
    r = m
    next
  end
  if sm>sunuke(m+1)
    l = m
    next
  end
  puts sm
  exit
end
