x, y = gets.split.map(&:to_i)

if x < y
  puts y - x
else
  if x < 0
    puts (y.abs - x.abs) + 2
  else
    puts (y.abs - x.abs) + 1
  end
end
