n = gets.to_i
if n.odd?
  ans = n * (n - 1) / 2
else
  ans = (n - 1) * (n - 2) / 2 + (n - 1)
end
puts ans
