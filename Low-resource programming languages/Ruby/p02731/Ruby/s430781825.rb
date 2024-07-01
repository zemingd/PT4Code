L = gets.chomp.to_i

if L % 3 == 0
  puts (L / 3)**3
else
  if L % 3 == 1
    puts ((L-1)/3)**2 * (L+2)/3
  else
    puts ((L-1)/3) * ((L+2)/3)**2
  end
end