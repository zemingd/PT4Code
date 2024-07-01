N = gets.to_i
if N % 2 == 0
  puts (N / 2) ** 2
else
  puts (N / 2) * (N / 2 + 1)
end