while true
  
  x,y = gets.split.map(&:to_i)
  if x == 0 && y == 0 
    break
  end

  if x < y
    puts x.to_s + " " + y.to_s
  else
    puts y.to_s + " " + x.to_s
  end
 
end
