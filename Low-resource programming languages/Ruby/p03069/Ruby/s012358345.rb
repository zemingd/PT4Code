
n = gets.chomp.to_i
 
s = gets.chomp
 
curr = ""

before = 0

min = nil

front_sum = 0
back_all = s.count(".")


s.chars.each_with_index do |a,i|
 
  if(a != curr)
      
    if a == "#"


      front = s.slice(before, i - before)
   
      front_sum += front.count("#")
  
      back_sum = back_all - (i - front_sum)
      sum = front_sum + back_sum
 
      min = sum if(min > sum || sum == nil)
      
      before = i

    end
    
    
    
    curr = a
  
  end
 
end
 
 
if (min == nil)
  min = 0
end
 

puts min
