A , B , C , D= gets.split(" ").map!{|i| i.to_i}

 AB = B- A
 BC = B-C
 
  
 answer = AB.abs - BC.abs 
 if answer.abs<= D 
     puts "yes" 
 else 
     puts "NO"
 end
 