while true
  x, y  = gets.split.map(&:to_i)

  if x == 0 && y == 0
    break
  elsif x <= y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end