loop do
  x,y = gets.chomp.split.map(&:to_i)
  break if x == 0 && y ==0
  if x < y
    puts "%d %d"%[x, y]
  else
    puts "%d %d"%[y, x]
  end
end