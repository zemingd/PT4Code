while nums = gets
  x, y = nums.split
  break if x == '0' && y == '0'
  if x < y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end