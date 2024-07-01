while str = STDIN.gets
  n = str.split(" ")
  x = n[0].to_i
  y = n[1].to_i

    n = x
    x = y
    y = n
    puts "#{x} #{y}"
end
