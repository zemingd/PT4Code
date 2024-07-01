n = gets.to_i
min_f = 20
a = 1
while a * a <= n do
  b = n / a
  if a * b == n
    f = [a.to_s.length, b.to_s.length].max
    min_f = f if min_f > f
  end
  a += 1
end
puts min_f
