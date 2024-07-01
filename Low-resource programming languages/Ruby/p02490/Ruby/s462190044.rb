while true
  num= gets.split.sort
  x = num[0].to_i
  y = num[1].to_i
  break  if x == 0 && y == 0
  puts "#{x} #{y}"
end