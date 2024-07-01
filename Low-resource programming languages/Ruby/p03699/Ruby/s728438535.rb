gets
points = gets(nil).split.map(&:to_i)
max = points.inject(:+)

if max % 10 != 0
  puts max
else
  x = points.select{|x| x % 10 != 0}.sort
  if x == []
    puts 0
  else
    puts max - x[0]
  end
end
