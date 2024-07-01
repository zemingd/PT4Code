x,y = gets.split.map(&:to_i)

until x == 0 && y == 0
  if x > y
    puts "#{y} #{x}"
  else
    puts "#{x} #{y}"
  end
end