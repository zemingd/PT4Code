while true
  x, y = gets.split.map(&:to_i).sort
  break  if x == 0 && y == 0
  puts "#{x} #{y}"
end