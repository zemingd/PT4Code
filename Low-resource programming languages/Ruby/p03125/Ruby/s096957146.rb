a, b = gets.split.map(&:to_i)

if b % a == 0
  p (a + b)
else
  p (b - a)
end
