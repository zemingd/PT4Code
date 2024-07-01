X, K, D = gets.chomp.split.map(&:to_i)

if X == 0
  if D.even?
    puts 0
  else
    puts D
  end
elsif X > 0
  i = X / D
  if i > K
    j = X - D * K
    puts j.abs
  else
    j = X % D
    k = D - j
    if (K - i).even?
      puts j.abs
    else
      puts k.abs
    end
  end
else
  i = (- X) / D
  if i > K
    j = X + D * K
    puts j.abs
  else
    j = - ((- X) % D)
    k = D + j
    if (K - i).even?
      puts j.abs
    else
      puts k.abs
    end
  end
end
