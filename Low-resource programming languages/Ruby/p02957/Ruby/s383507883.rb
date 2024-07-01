  x = gets.chomp.split(" ")
  a = x[0].to_i
  b = x[1].to_i
  if (a+b)%2 == 0
    puts((a+b)/2)
  else
    puts('IMPOSSIBLE')
  end