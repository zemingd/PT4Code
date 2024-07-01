HH, WW = ARGF.gets.chomp.split.collect {|el| el.to_i}

if 1 < HH && 1 < WW
  n0 = (HH + 1) / 2
  n1 = (HH) / 2

  w2 = WW / 2

  sum = (n0 + n1) * w2
  if (WW % 2) == 1
    sum += n0
  end
else
  sum = 1
end

puts sum
