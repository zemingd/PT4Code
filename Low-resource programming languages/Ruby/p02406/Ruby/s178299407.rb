(1..gets.to_i).each {|i| 
 x = i

 if (x%3)==0 then
  print " #{i}" 
 else
  while x!=0
   if (x%10)==3 then 
    print " #{i}"
    break
   end
   x /= 10
  end
 end
}
puts