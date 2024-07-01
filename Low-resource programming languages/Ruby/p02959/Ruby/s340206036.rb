N = gets.to_i
a = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0
(0...N).each do |i|
  b = B[i]
  if a[i] <= b
    ans += a[i]
    b -= a[i]
  else
    ans += b
    next
  end

  if a[i+1] <= b
    ans += a[i+1]
    a[i+1] -= b
  else
    ans += b
    a[i+1] -= b
  end
end
p ans