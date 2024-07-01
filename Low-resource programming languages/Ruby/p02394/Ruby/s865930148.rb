class Main
  str = gets
  str = str.split(" ")
  w = str[0].to_i
  h = str[1].to_i
  x = str[2].to_i
  y = str[3].to_i
  r = str[4].to_i
  if w >= (x + r) && h >= (y + r) && 0 <= (x - r) && 0 <= (y - r)
    puts "Yes"
  else 
    puts "No"
  end
end
