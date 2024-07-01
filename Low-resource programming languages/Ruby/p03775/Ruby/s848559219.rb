# 昔解いてた

n = gets.to_i

a = 0
b = n
ans = 999999999999
while n > a * a
  a += 1
  next if n % a > 0
  b = n / a
  val = [a.to_s.size, b.to_s.size].max
  ans = [ans, val].min
end

puts ans
