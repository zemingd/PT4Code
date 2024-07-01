N = gets.to_i
if N == 1 then
  puts 0
else
  n = N - 1
  puts (n * (n + 1) / 2) + N.modulo(1)
end