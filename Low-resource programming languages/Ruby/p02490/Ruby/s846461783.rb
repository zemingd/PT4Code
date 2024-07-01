while true
  x, y = gets.chomp.split(" ").map(&:to_i)
  exit if x == 0 && y == 0
  if x <= y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end