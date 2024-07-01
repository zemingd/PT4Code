# abc167 B
a, b, c, k = gets.split.map(&:to_i)

if a > k
  p a
else
  if a + b > k
    p a
  else
    p a - (k - a - b)
  end
end

