class Main
  str = gets
  str = str.split(" ")
  a = str[0].to_i
  b = str[1].to_i
  c = str[2].to_i
  if a < b && b < c && a < c
    puts "Yes"
  else
    puts "No"
  end
end
