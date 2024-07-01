while
  x, y = gets.split.map &:to_i
  break if x == 0 && y == 0
  puts "#{x y}"
end