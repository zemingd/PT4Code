x = gets.to_i

while true
  flag = 1
  for i in 2..(x**0.5).to_i
    if x % i == 0
      flag = 0
      break
    end
  end
  if flag == 1
    puts x
    break
  else
    x += 1
  end
end