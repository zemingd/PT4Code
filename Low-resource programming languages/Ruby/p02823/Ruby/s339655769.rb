N, A, B = gets.split.map(&:to_i)

if (A - B).abs.even?
  puts (B - A).abs / 2
else
  raise
  puts [[A, B].max - 1, [N - A, N - B].max].min
end
