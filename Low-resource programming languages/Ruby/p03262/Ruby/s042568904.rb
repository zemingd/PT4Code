n,xx=gets.split.map(&:to_i)
x=gets.split.map(&:to_i)
n.times do |i|
  x[i] = (x[i] - xx).abs
end
xm = x.min
i = 1
while true
  if xm % i != 0
    i += 1
    next
  end
  s = xm / i
  f = true
  n.times do |j|
    if x[j] % s != 0
      f = false
      break
    end
  end
  if f
    puts s
    exit
  end
  i += 1
end
