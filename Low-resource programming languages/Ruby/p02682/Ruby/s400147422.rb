A, B, C, k = gets.split.map(&:to_i)

res = 0
if A >= k
  res = k
else
  res += A
  k -= A
  k -= B
  res -= k if k > 0
end

puts res
