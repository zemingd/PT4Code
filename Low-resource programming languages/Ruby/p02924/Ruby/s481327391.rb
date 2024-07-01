n = gets.to_i
if n.odd?
  puts ((n - 1) + 1) * (n - 1) / 2
else
  puts (n / 2) * (n - 1)
end
