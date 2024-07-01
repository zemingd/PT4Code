hp = gets.to_i

if hp == 1
  puts hp
else
  i = 0
  count = 0
  while hp > 0
    hp = (hp / 2.to_f).floor
    if i == 0
      count += 1
    else
      count += 2**i
    end
    i += 1
  end
  puts count
end


