array=gets.split("").map(&:to_i)
brrayarray.each{ |x| 
  if x == 1
    x=9
  else
    x=1
  end}
puts 100*array[0]+10*array[1]+array[2]