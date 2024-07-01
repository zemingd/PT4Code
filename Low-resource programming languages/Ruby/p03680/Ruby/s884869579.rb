  n = gets.to_i
  x = []
  tim = 0
  judged = 1
  win = 0
  n.times do |i|
    x[i] = gets.to_i
  end
  n.times do
    judged = x[judged-1]
    if judged == 2
      tim += 1
      win = 1
      break
    else
      tim += 1
    end
  end
  if win == 1
    puts tim
  else
    puts -1
  end
