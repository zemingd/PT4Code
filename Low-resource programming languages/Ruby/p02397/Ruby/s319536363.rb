while str = STDIN.gets
  n = str.split(" ")
  x = n[0].to_i
  y = n[1].to_i

  if x > y
    num = y
    y = x
    x = num
  elsif x == 0 && y == 0
    break
  end

  puts "#{x} #{y}"

end