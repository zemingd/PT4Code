
n = gets.chomp.to_i
 
s = gets.chomp
 
curr = ""

before = 0

min = 9999

front_sum = 0
back_all = s.count(".")


s.chars.each_with_index do |a,i|
 
  if(a != curr)
      
    if a == "#"


      front = s.slice(before, i - before)
      
      front_sum += front.count("#")
      back_sum = back_all - (i - front_sum)
      sum = front_sum + back_sum
 
      min = sum if(min > sum)
      
      before = i

    end
    
    
    
    curr = a
  
  end
 
end
 
 
if (min == 9999)
  min = 0
end
 

puts min
