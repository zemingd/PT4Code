loop do
  (x, y) = gets.chomp.split(" ")
  x = x.to_i
  y = y.to_i
  if x == 0 && y ==0
    break
  end
  if x < y
    print x, " ", y, "\n"
  else
    print y, " ", x, "\n"
  end
end