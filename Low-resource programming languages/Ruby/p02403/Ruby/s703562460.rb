loop do

  num = gets.split(" ")
  h = num[0].to_i
  w = num[1].to_i

  for i in 0..h-1  
    for j in 0..w-1
      print "#"
    end
    print "\n" 
  end  
  
  puts ""
 
  if h && w == 0 then
    break
  end

end