line = gets.split('')
count = 0
maxCount = 0
line.each{|var|
  if var == ("S")
    count +=1 
   if maxCount < count
      maxCount = count
   end
  elsif var == ("R")
    
    count = 0
    
  end
}
 p maxCount