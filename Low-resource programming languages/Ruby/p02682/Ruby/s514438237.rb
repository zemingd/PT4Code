a, b, c, k = gets.split.map(&:to_i)

if a >= k
  p k
  exit
end

k -= a

if b >= k
  p a
  exit
end

k -= b

p a - k
