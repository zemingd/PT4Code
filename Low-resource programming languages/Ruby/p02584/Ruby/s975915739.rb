x, k, d = gets.split(" ").map(&:to_i)
x = x.abs
m = x % d
s = x / d

if s > k
  ans = x - k*d
  puts ans
  exit
end

t = k-s

if t.even?
  puts m
else
  m_1 = m - d
  m_2 = m_1.abs
  puts m_2
end
