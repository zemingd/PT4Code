while str = STDIN.gets
  n = str.split(" ")
  W = n[0].to_i
  H = n[1].to_i
  x = n[2].to_i
  y = n[3].to_i
  r = n[4].to_i

  if W < x+r 
    puts "No"
  elsif  H < y+r 
    puts "No"
  elsif x < r 
    puts "No"  
  elsif  y < r
    puts "No"
  else
    puts "Yes"
  end
end

