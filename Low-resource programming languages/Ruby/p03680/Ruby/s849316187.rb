N = gets.to_i
a = [0] + N.times.map { gets.to_i }
i = 1
ans = 0
while i != 2
  ans += 1
  t = a[i]
  if t.nil?
    p -1
    exit
  end
  a[i] = nil
  i = t
end
p ans
