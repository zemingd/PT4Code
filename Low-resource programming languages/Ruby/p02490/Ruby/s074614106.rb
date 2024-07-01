loop do
  x, y = gets.split.map{|i| i.to_i}
  break if x == 0 && y == 0

  if x < y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end