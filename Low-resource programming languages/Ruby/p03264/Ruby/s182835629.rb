k = gets.to_i
if k % 2 == 0
  puts (k / 2) * (k / 2)
else
  puts ((k + 1) / 2) * ((k - 1) / 2)
end
