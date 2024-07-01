x, y = gets.split.map(&:to_i)

if x < y
  if y > 0 && x < 0 && (x.abs < y.abs)
    puts (y.abs - x.abs) + 1
  else
    puts y - x
  end
else
  if x < 0
    puts (y.abs - x.abs) + 2
  else
    puts (y.abs - x.abs) + 1
  end
end
