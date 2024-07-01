while str = STDIN.gets
    n = str.split(" ")
    w = n[0].to_i
    h = n[1].to_i
    x = n[2].to_i
    y = n[3].to_i
    r = n[4].to_i
    if (x + r >= w)||(y + r >= h)
      puts "No"
    else
      puts "Yes"
    end
  end