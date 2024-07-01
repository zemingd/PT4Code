class Main
  str = gets
  str = str.split(" ")
  w = str[0]
  h = str[1]
  x = str[2]
  y = str[3]
  r = str[4]
  if w > (r + x) && h > (r + y)
    puts "Yes"
  else 
    puts "No"
  end
end
