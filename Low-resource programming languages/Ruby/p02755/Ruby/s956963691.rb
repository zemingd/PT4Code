a, b = gets.chomp.split(' ').map(&:to_i)

ta = a / 0.08
tb = b / 0.10

if ta > tb
  if (ta * 0.10).floor == b
    puts ta.floor
  else
    puts '-1'
  end
elsif ta == tb
  puts ta.floor
else
  if (tb * 0.08).floor == a
    puts ta.floor
  else 
    puts '-1'
  end
end