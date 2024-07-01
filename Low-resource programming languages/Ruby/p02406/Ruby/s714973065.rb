(1..gets.to_i).each {|i| 
 x = i

 if (x%3)==0 then
  print " #{i}" 
 else
  while x!=0 
   print " #{i}" if (x%10)==3
   x /= 10
  end
 end
}
puts