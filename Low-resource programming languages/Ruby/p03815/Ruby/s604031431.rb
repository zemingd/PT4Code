x = gets.to_i
a1 = x / 11
r1 = x - (a1 * 11)                                                                                                           
a = a1 * 2                                                                                                                   
if r1 > 0
  if r1 < 7                                                                                                                  
    a += 1                                                                                                                   
  else                                                                                                                       
    a += 2                                                                                                                   
  end                                                                                                                        
end
puts a