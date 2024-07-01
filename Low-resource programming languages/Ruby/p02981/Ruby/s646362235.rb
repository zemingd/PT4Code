N, A, B = gets.chomp.split(' ').map(&:to_i)
if N * A <= B
  puts N * A
else
  puts B
end
