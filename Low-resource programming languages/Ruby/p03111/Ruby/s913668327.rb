N,A,B,C = gets.split.map(&:to_i)
l = []
N.times do
  l << gets.to_i
end
ans = 10**10
(4**N).times do |i|
  tmp = 0
  b = [0,0,0]
  N.times do |j|
    k = i&3
    if k < 3
      tmp += 10 if b[k] != 0
      b[k] += l[j]
    end
    i /= 4
  end
  if b.min == 0
    next
  end
  tmp += (b[0]-A).abs + (b[1]-B).abs + (b[2]-C).abs
  ans = tmp if tmp < ans
end
p ans