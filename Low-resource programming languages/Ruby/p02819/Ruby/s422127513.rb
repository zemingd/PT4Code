x = gets.to_i
loop do
  flag = 0
  i = 2
  while i*i < x
    if x % i == 0
      flag = 1
      break
    end
    i += 1
  end
  if flag == 0
    puts x
    exit
  else
    x += 1
  end
end