while (n = gets.split.map(&:to_i)) do
  x, y = n
  break if x == 0 && y == 0
  puts n.sort.join " "
end