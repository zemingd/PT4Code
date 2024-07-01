i = 0
while(i < 3000)
  str = STDIN.gets
    n = str.split(" ")
    x = n[0].to_i
    y = n[1].to_i
    if (0 <= x) && (y <= 10000)
      if x > y
        puts "#{y} #{x}"
      else
        puts "#{x} #{y}"
      end
    end
end