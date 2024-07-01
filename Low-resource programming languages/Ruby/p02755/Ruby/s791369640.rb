a, b = gets.chomp.split(' ').map(&:to_i)

ta = (a / 0.08).floor
tb = (b / 0.10).floor

if ta > tb
  if (ta * 0.10).floor == b
    puts ta
  else
    puts '-1'
  end
elsif ta == tb
  puts ta.floor
else
  if (tb * 0.08).floor == a
    puts ta
  else 
    puts '-1'
  end
end