k = gets.to_i
if k.odd?
  p (k / 2) * (k / 2 + 1)
else
  p (k / 2) * (k / 2)
end