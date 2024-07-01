N, A, B = gets.chomp.split(" ").map(&:to_i)

if N * A > B then
  puts B
else
  puts N * A
end
