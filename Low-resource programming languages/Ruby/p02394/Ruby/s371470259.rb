while str = STDIN.gets
  n = str.split(" ")
  W = n[0].to_i
  H = n[1].to_i
  r = n[2].to_i
  x = n[3].to_i
  y = n[4].to_i

  if W >= x+r && H >= y+r
    puts "Yes"
  else
    puts "No"
  end
end
