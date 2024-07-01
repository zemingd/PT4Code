time = []
min = 0
5.times do
  x = gets.to_i
  time << x
  if x.ceil(-1) - x > min.ceil(-1) - min
    time.unshift min
    min = time.pop
  end
end
puts time.inject(min){|a,b| a+b.ceil(-1) }
