D, N = gets.split.map(&:to_i)
if D == 0 then
  puts N
elsif D == 1 then
  puts 100 * N
else
  puts 10000*N
end
