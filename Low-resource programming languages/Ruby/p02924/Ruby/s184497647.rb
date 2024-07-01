N = gets.chomp.to_i
if N == 1
  puts 0
else
  if N % 2 == 0
    puts (N + 1) * (N - 2) / 2 + 1
  else
    puts N * (N - 1) / 2
  end
end
