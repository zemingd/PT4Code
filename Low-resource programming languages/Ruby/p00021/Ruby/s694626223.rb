gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map {|x| x.to_f }
  if (y2 - y1) / (x2 - x1) == (y4 - y3) / (x4 - x3) then
    puts 'YES'
  else
    puts 'NO'
  end
end