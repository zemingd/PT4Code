N, A, B = gets.chomp.split(' ').map(&:to_i)
if N * A <= N * B
  puts N * A
else
  puts N * B
end
