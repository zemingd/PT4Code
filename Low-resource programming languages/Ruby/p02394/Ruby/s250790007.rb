while str = STDIN.gets
  n = str.split(" ")
  W = n[0].to_i
  H = n[1].to_i
  x = n[2].to_i
  y = n[3].to_i
  r = n[4].to_i

  if x - r < 0
    puts "No"
    elsif y - r < 0
      puts "No"
    elsif x + r > W
      puts "No"
    elsif y + r > H
         puts "No"
    else
        puts "Yes"
    end
end