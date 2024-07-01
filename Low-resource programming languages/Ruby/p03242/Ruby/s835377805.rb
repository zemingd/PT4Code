n_1,n_2,n_3 = gets.strip.split('').map(&:to_i)

  if n_1 == 1
    n_1 = 9
  else
    n_1 = 1
  end
  if n_2 == 1
    n_2 = 9
  else
    n_2 = 1
  end
  if n_3 == 1
    n_3 = 9
  else
    n_3 = 1
  end


puts 100 * n_1 + 10 * n_2 + n_3