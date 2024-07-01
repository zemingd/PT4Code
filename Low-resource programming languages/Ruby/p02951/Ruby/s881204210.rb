A, B, C = gets.split.map(&:to_i)
rest = C - (A - B)
if rest <= 0
  p 0
else
  p rest
end